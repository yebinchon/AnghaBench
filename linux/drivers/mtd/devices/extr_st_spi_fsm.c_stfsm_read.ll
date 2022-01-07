; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, i32, %struct.stfsm_seq }
%struct.stfsm_seq = type { i32, i32, i32, i32 }

@FLASH_PAGESIZE_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading %d bytes from 0x%08x\0A\00", align 1
@CFG_READ_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32*, i32, i32)* @stfsm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_read(%struct.stfsm* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stfsm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stfsm_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.stfsm* %0, %struct.stfsm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %20 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %19, i32 0, i32 2
  store %struct.stfsm_seq* %20, %struct.stfsm_seq** %9, align 8
  %21 = load i32, i32* @FLASH_PAGESIZE_32, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %26 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %32 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CFG_READ_TOGGLE_32BIT_ADDR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %39 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %4
  %41 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %42 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 3
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 2
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = ptrtoint i32* %50 to i64
  %52 = and i64 %51, 3
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %57

55:                                               ; preds = %40
  %56 = load i32*, i32** %6, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32* [ %24, %54 ], [ %56, %55 ]
  store i32* %58, i32** %18, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @TRANSFER_SIZE(i32 %72)
  %74 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %75 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 65535
  %79 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %80 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 65535
  %83 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %84 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %86 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %87 = call i32 @stfsm_load_seq(%struct.stfsm* %85, %struct.stfsm_seq* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %57
  %91 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @stfsm_read_fifo(%struct.stfsm* %91, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %57
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @stfsm_read_fifo(%struct.stfsm* %99, i32* %100, i32 %102)
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = call i32 (i32*, ...) @memcpy(i32* %107, [4 x i32]* %15, i32 %108)
  br label %110

110:                                              ; preds = %98, %95
  %111 = load i32*, i32** %6, align 8
  %112 = ptrtoint i32* %111 to i64
  %113 = and i64 %112, 3
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i32*, ...) @memcpy(i32* %116, i32* %24, i32 %117)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %121 = call i32 @stfsm_wait_seq(%struct.stfsm* %120)
  %122 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %123 = call i32 @stfsm_clear_fifo(%struct.stfsm* %122)
  %124 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %125 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CFG_READ_TOGGLE_32BIT_ADDR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %132 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %131, i32 0)
  br label %133

133:                                              ; preds = %130, %119
  %134 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %134)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #2

declare dso_local i32 @stfsm_enter_32bit_addr(%struct.stfsm*, i32) #2

declare dso_local i32 @TRANSFER_SIZE(i32) #2

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #2

declare dso_local i32 @stfsm_read_fifo(%struct.stfsm*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #2

declare dso_local i32 @stfsm_clear_fifo(%struct.stfsm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
