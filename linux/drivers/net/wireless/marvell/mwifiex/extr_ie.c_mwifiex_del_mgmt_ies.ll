; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_del_mgmt_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_del_mgmt_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32 }
%struct.mwifiex_ie = type { i64, i8*, i8* }

@MWIFIEX_AUTO_IDX_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_DELETE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_del_mgmt_ies(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_ie*, align 8
  %5 = alloca %struct.mwifiex_ie*, align 8
  %6 = alloca %struct.mwifiex_ie*, align 8
  %7 = alloca %struct.mwifiex_ie*, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %4, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %5, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %6, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mwifiex_ie* @kmalloc(i32 24, i32 %15)
  store %struct.mwifiex_ie* %16, %struct.mwifiex_ie** %7, align 8
  %17 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %18 = icmp ne %struct.mwifiex_ie* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %163

22:                                               ; preds = %14
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %28 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @MWIFIEX_DELETE_MASK, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %32 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %36 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 3
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 1
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 0
  %43 = call i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private* %35, %struct.mwifiex_ie* %36, i32* %38, %struct.mwifiex_ie* null, i32* %40, %struct.mwifiex_ie* null, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  store i32 -1, i32* %8, align 4
  br label %153

46:                                               ; preds = %22
  %47 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %1
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.mwifiex_ie* @kmalloc(i32 24, i32 %57)
  store %struct.mwifiex_ie* %58, %struct.mwifiex_ie** %4, align 8
  %59 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %60 = icmp ne %struct.mwifiex_ie* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %153

64:                                               ; preds = %56
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %70 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @MWIFIEX_DELETE_MASK, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %76 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %64, %50
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.mwifiex_ie* @kmalloc(i32 24, i32 %84)
  store %struct.mwifiex_ie* %85, %struct.mwifiex_ie** %5, align 8
  %86 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %87 = icmp ne %struct.mwifiex_ie* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %153

91:                                               ; preds = %83
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %97 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @MWIFIEX_DELETE_MASK, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %101 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %103 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %91, %77
  %105 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %104
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.mwifiex_ie* @kmalloc(i32 24, i32 %111)
  store %struct.mwifiex_ie* %112, %struct.mwifiex_ie** %6, align 8
  %113 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %114 = icmp ne %struct.mwifiex_ie* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %153

118:                                              ; preds = %110
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %124 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @MWIFIEX_DELETE_MASK, align 4
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %128 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %130 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %118, %104
  %132 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %133 = icmp ne %struct.mwifiex_ie* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %136 = icmp ne %struct.mwifiex_ie* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %139 = icmp ne %struct.mwifiex_ie* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %137, %134, %131
  %141 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %142 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %143 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %144 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %143, i32 0, i32 2
  %145 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %146 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %147 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %146, i32 0, i32 1
  %148 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %150 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %149, i32 0, i32 0
  %151 = call i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private* %141, %struct.mwifiex_ie* %142, i32* %144, %struct.mwifiex_ie* %145, i32* %147, %struct.mwifiex_ie* %148, i32* %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %140, %137
  br label %153

153:                                              ; preds = %152, %115, %88, %61, %45
  %154 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %155 = call i32 @kfree(%struct.mwifiex_ie* %154)
  %156 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %4, align 8
  %157 = call i32 @kfree(%struct.mwifiex_ie* %156)
  %158 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %159 = call i32 @kfree(%struct.mwifiex_ie* %158)
  %160 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %161 = call i32 @kfree(%struct.mwifiex_ie* %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %153, %19
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.mwifiex_ie* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private*, %struct.mwifiex_ie*, i32*, %struct.mwifiex_ie*, i32*, %struct.mwifiex_ie*, i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
