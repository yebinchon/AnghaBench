; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ctx.c_netxen_setup_minidump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ctx.c_netxen_setup_minidump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@NX_RCODE_CMD_INVALID = common dso_local global i32 0, align 4
@NX_RCODE_CMD_NOT_IMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Flashed firmware version does not support minidump, minimum version required is [ %u.%u.%u ]\0A\00", align 1
@NX_MD_SUPPORT_MAJOR = common dso_local global i32 0, align 4
@NX_MD_SUPPORT_MINOR = common dso_local global i32 0, align 4
@NX_MD_SUPPORT_SUBVERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Error : Invalid template size ,should be non-zero.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Minidump template checksum Error\0A\00", align 1
@NX_DUMP_MASK_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_setup_minidump(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %9 = call i32 @netxen_get_minidump_template_size(%struct.netxen_adapter* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NX_RCODE_CMD_INVALID, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NX_RCODE_CMD_NOT_IMPL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %12
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* @NX_MD_SUPPORT_MAJOR, align 4
  %29 = load i32, i32* @NX_MD_SUPPORT_MINOR, align 4
  %30 = load i32, i32* @NX_MD_SUPPORT_SUBVERSION, align 4
  %31 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %146

34:                                               ; preds = %1
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %146

48:                                               ; preds = %34
  %49 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kmalloc(i32 %52, i32 %53)
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32* %54, i32** %57, align 8
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %146

66:                                               ; preds = %48
  %67 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %68 = call i32 @netxen_get_minidump_template(%struct.netxen_adapter* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @NX_RCODE_CMD_NOT_IMPL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %136

80:                                               ; preds = %66
  %81 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %82 = call i64 @netxen_check_template_checksum(%struct.netxen_adapter* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %136

92:                                               ; preds = %80
  %93 = load i32, i32* @NX_DUMP_MASK_DEF, align 4
  %94 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 8
  %97 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %7, align 8
  %101 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %122, %92
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = icmp ult i64 %107, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %7, align 8
  %118 = load i32, i32* %116, align 4
  %119 = call i32 @__le32_to_cpu(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  store i32* null, i32** %128, align 8
  %129 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %146

136:                                              ; preds = %84, %79
  %137 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @kfree(i32* %140)
  %142 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %136, %125, %63, %40, %32
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @netxen_get_minidump_template_size(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @netxen_get_minidump_template(%struct.netxen_adapter*) #1

declare dso_local i64 @netxen_check_template_checksum(%struct.netxen_adapter*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
