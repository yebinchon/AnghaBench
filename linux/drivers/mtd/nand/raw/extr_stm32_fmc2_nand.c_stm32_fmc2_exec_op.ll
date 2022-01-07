; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i32, %struct.nand_op_instr*, i32 }
%struct.nand_op_instr = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.stm32_fmc2_nfc = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @stm32_fmc2_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_operation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_fmc2_nfc*, align 8
  %9 = alloca %struct.nand_op_instr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %15)
  store %struct.stm32_fmc2_nfc* %16, %struct.stm32_fmc2_nfc** %8, align 8
  store %struct.nand_op_instr* null, %struct.nand_op_instr** %9, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %19 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @stm32_fmc2_select_chip(%struct.nand_chip* %17, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %147

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %147

31:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %142, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %35 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %145

38:                                               ; preds = %32
  %39 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %40 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %39, i32 0, i32 1
  %41 = load %struct.nand_op_instr*, %struct.nand_op_instr** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %41, i64 %43
  store %struct.nand_op_instr* %44, %struct.nand_op_instr** %9, align 8
  %45 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %46 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %141 [
    i32 131, label %48
    i32 132, label %63
    i32 130, label %95
    i32 129, label %114
    i32 128, label %133
  ]

48:                                               ; preds = %38
  %49 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %50 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %55 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %58 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @writeb_relaxed(i32 %53, i32 %61)
  br label %141

63:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %67 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %65, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %74 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %83 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %86 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @writeb_relaxed(i32 %81, i32 %89)
  br label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %64

94:                                               ; preds = %64
  br label %141

95:                                               ; preds = %38
  %96 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %97 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %98 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %104 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %109 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @stm32_fmc2_read_data(%struct.nand_chip* %96, i32 %102, i32 %107, i32 %112)
  br label %141

114:                                              ; preds = %38
  %115 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %116 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %117 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %123 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %128 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @stm32_fmc2_write_data(%struct.nand_chip* %115, i32 %121, i32 %126, i32 %131)
  br label %141

133:                                              ; preds = %38
  %134 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %135 = load %struct.nand_op_instr*, %struct.nand_op_instr** %9, align 8
  %136 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @nand_soft_waitrdy(%struct.nand_chip* %134, i32 %139)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %38, %133, %114, %95, %94, %48
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %32

145:                                              ; preds = %32
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %29, %24
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @stm32_fmc2_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @writeb_relaxed(i32, i32) #1

declare dso_local i32 @stm32_fmc2_read_data(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @stm32_fmc2_write_data(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @nand_soft_waitrdy(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
