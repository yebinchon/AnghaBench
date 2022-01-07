; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i64, i64, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.atmel_nand = type { %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@atmel_nand_cmd_ctrl = common dso_local global i32 0, align 4
@atmel_nand_read_byte = common dso_local global i32 0, align 4
@atmel_nand_write_byte = common dso_local global i32 0, align 4
@atmel_nand_read_buf = common dso_local global i32 0, align 4
@atmel_nand_write_buf = common dso_local global i32 0, align 4
@atmel_nand_select_chip = common dso_local global i32 0, align 4
@NAND_KEEP_TIMINGS = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_nand_controller*, %struct.atmel_nand*)* @atmel_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nand_init(%struct.atmel_nand_controller* %0, %struct.atmel_nand* %1) #0 {
  %3 = alloca %struct.atmel_nand_controller*, align 8
  %4 = alloca %struct.atmel_nand*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %3, align 8
  store %struct.atmel_nand* %1, %struct.atmel_nand** %4, align 8
  %7 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %7, i32 0, i32 0
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %6, align 8
  %11 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %17, i32 0, i32 4
  %19 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 3
  store i32* %18, i32** %21, align 8
  %22 = load i32, i32* @atmel_nand_cmd_ctrl, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @atmel_nand_read_byte, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @atmel_nand_write_byte, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @atmel_nand_read_buf, align 4
  %35 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @atmel_nand_write_buf, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @atmel_nand_select_chip, align 4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %47 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %2
  %51 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %50, %2
  %60 = load i32, i32* @NAND_KEEP_TIMINGS, align 4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %50
  %66 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 40, i32* %68, align 8
  %69 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %70 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %81 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @NAND_ECC_HW, align 4
  %86 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
