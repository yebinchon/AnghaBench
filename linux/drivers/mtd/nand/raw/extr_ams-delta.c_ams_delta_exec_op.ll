; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i32, %struct.nand_op_instr* }
%struct.nand_op_instr = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.ams_delta_nand = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @ams_delta_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_operation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ams_delta_nand*, align 8
  %9 = alloca %struct.nand_op_instr*, align 8
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.ams_delta_nand* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.ams_delta_nand* %12, %struct.ams_delta_nand** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

16:                                               ; preds = %3
  %17 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %18 = call i32 @ams_delta_ctrl_cs(%struct.ams_delta_nand* %17, i32 1)
  %19 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %20 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %19, i32 0, i32 1
  %21 = load %struct.nand_op_instr*, %struct.nand_op_instr** %20, align 8
  store %struct.nand_op_instr* %21, %struct.nand_op_instr** %9, align 8
  br label %22

22:                                               ; preds = %132, %16
  %23 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %24 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %25 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %24, i32 0, i32 1
  %26 = load %struct.nand_op_instr*, %struct.nand_op_instr** %25, align 8
  %27 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %28 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %26, i64 %30
  %32 = icmp ult %struct.nand_op_instr* %23, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %22
  %34 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %35 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %127 [
    i32 131, label %37
    i32 132, label %52
    i32 130, label %73
    i32 129, label %87
    i32 128, label %101
  ]

37:                                               ; preds = %33
  %38 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %39 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gpiod_set_value(i32 %40, i32 1)
  %42 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %43 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %44 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @ams_delta_write_buf(%struct.ams_delta_nand* %42, i32* %46, i32 1)
  %48 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %49 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpiod_set_value(i32 %50, i32 0)
  br label %127

52:                                               ; preds = %33
  %53 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %54 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_set_value(i32 %55, i32 1)
  %57 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %58 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %59 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %64 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ams_delta_write_buf(%struct.ams_delta_nand* %57, i32* %62, i32 %67)
  %69 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %70 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gpiod_set_value(i32 %71, i32 0)
  br label %127

73:                                               ; preds = %33
  %74 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %75 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %76 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %82 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ams_delta_read_buf(%struct.ams_delta_nand* %74, i32 %80, i32 %85)
  br label %127

87:                                               ; preds = %33
  %88 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %89 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %90 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %96 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ams_delta_write_buf(%struct.ams_delta_nand* %88, i32* %94, i32 %99)
  br label %127

101:                                              ; preds = %33
  %102 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %103 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %108 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %109 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %112 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @nand_gpio_waitrdy(%struct.nand_chip* %107, i32 %110, i32 %115)
  br label %125

117:                                              ; preds = %101
  %118 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %119 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %120 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @nand_soft_waitrdy(%struct.nand_chip* %118, i32 %123)
  br label %125

125:                                              ; preds = %117, %106
  %126 = phi i32 [ %116, %106 ], [ %124, %117 ]
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %33, %125, %87, %73, %52, %37
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %135

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %134 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %133, i32 1
  store %struct.nand_op_instr* %134, %struct.nand_op_instr** %9, align 8
  br label %22

135:                                              ; preds = %130, %22
  %136 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %8, align 8
  %137 = call i32 @ams_delta_ctrl_cs(%struct.ams_delta_nand* %136, i32 0)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %135, %15
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.ams_delta_nand* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @ams_delta_ctrl_cs(%struct.ams_delta_nand*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ams_delta_write_buf(%struct.ams_delta_nand*, i32*, i32) #1

declare dso_local i32 @ams_delta_read_buf(%struct.ams_delta_nand*, i32, i32) #1

declare dso_local i32 @nand_gpio_waitrdy(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @nand_soft_waitrdy(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
