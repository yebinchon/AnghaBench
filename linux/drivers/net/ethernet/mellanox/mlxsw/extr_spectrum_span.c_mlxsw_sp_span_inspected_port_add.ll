; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_inspected_port_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_inspected_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.TYPE_4__*, %struct.mlxsw_sp* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.mlxsw_sp_span_entry = type { i32 }
%struct.mlxsw_sp_span_inspected_port = type { i32, i32, i32, i32 }

@MLXSW_REG_SBIB_LEN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_EGRESS = common dso_local global i32 0, align 4
@sbib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not create shared buffer for mirroring\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32)* @mlxsw_sp_span_inspected_port_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_span_inspected_port_add(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_span_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_span_inspected_port*, align 8
  %11 = alloca %struct.mlxsw_sp*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.mlxsw_sp_span_entry* %1, %struct.mlxsw_sp_span_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %19, i32 0, i32 2
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %20, align 8
  store %struct.mlxsw_sp* %21, %struct.mlxsw_sp** %11, align 8
  %22 = load i32, i32* @MLXSW_REG_SBIB_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %40, i64 %42
  store %struct.mlxsw_sp_span_entry* %43, %struct.mlxsw_sp_span_entry** %16, align 8
  %44 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %16, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @mlxsw_sp_span_entry_bound_port_find(%struct.mlxsw_sp_span_entry* %44, i32 %45, %struct.mlxsw_sp_port* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @EEXIST, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %153

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mlxsw_sp_span_mtu_to_buffsize(%struct.mlxsw_sp* %63, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @mlxsw_reg_sbib_pack(i8* %25, i32 %72, i32 %73)
  %75 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @sbib, align 4
  %79 = call i32 @MLXSW_REG(i32 %78)
  %80 = call i32 @mlxsw_reg_write(i32 %77, i32 %79, i8* %25)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %62
  %84 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %85 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @netdev_err(%struct.TYPE_4__* %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %153

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %95 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @mlxsw_sp_span_inspected_port_bind(%struct.mlxsw_sp_port* %94, %struct.mlxsw_sp_span_entry* %95, i32 %96, i32 1)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %136

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.mlxsw_sp_span_inspected_port* @kzalloc(i32 16, i32 %103)
  store %struct.mlxsw_sp_span_inspected_port* %104, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %105 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %106 = icmp ne %struct.mlxsw_sp_span_inspected_port* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %15, align 4
  br label %127

110:                                              ; preds = %102
  %111 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp_span_inspected_port, %struct.mlxsw_sp_span_inspected_port* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sp_span_inspected_port, %struct.mlxsw_sp_span_inspected_port* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sp_span_inspected_port, %struct.mlxsw_sp_span_inspected_port* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %10, align 8
  %123 = getelementptr inbounds %struct.mlxsw_sp_span_inspected_port, %struct.mlxsw_sp_span_inspected_port* %122, i32 0, i32 2
  %124 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  %125 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %124, i32 0, i32 0
  %126 = call i32 @list_add_tail(i32* %123, i32* %125)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %153

127:                                              ; preds = %107
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %132 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @mlxsw_sp_span_inspected_port_bind(%struct.mlxsw_sp_port* %131, %struct.mlxsw_sp_span_entry* %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %130, %127
  br label %136

136:                                              ; preds = %135, %100
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %142 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @mlxsw_reg_sbib_pack(i8* %25, i32 %143, i32 0)
  %145 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %146 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @sbib, align 4
  %149 = call i32 @MLXSW_REG(i32 %148)
  %150 = call i32 @mlxsw_reg_write(i32 %147, i32 %149, i8* %25)
  br label %151

151:                                              ; preds = %140, %136
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %153

153:                                              ; preds = %151, %110, %83, %50
  %154 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mlxsw_sp_span_entry_bound_port_find(%struct.mlxsw_sp_span_entry*, i32, %struct.mlxsw_sp_port*, i32) #2

declare dso_local i32 @mlxsw_sp_span_mtu_to_buffsize(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_reg_sbib_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @mlxsw_sp_span_inspected_port_bind(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32) #2

declare dso_local %struct.mlxsw_sp_span_inspected_port* @kzalloc(i32, i32) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
