; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.bcm47xxsflash* }
%struct.bcm47xxsflash = type { i32, i32 (%struct.bcm47xxsflash*, i32, i32)* }

@BCMA_CC_FLASHADDR = common dso_local global i32 0, align 4
@OPCODE_AT_BUF1_LOAD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Timeout reading page 0x%X info buffer\0A\00", align 1
@BCMA_CC_FLASHDATA = common dso_local global i32 0, align 4
@OPCODE_AT_BUF1_WRITE = common dso_local global i32 0, align 4
@OPCODE_AT_BUF1_PROGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i32*)* @bcm47xxsflash_write_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_write_at(%struct.mtd_info* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bcm47xxsflash*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %17, align 8
  store %struct.bcm47xxsflash* %18, %struct.bcm47xxsflash** %10, align 8
  %19 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %20 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = shl i32 %26, 1
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %36 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %33, %4
  %41 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %42 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %41, i32 0, i32 1
  %43 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %42, align 8
  %44 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %45 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 %43(%struct.bcm47xxsflash* %44, i32 %45, i32 %46)
  %48 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %49 = load i32, i32* @OPCODE_AT_BUF1_LOAD, align 4
  %50 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %48, i32 %49)
  %51 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %52, 1000
  %54 = call i32 @bcm47xxsflash_poll(%struct.bcm47xxsflash* %51, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %73, %62
  %64 = load i64, i64* %8, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %69 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %98

73:                                               ; preds = %66
  %74 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %75 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %74, i32 0, i32 1
  %76 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %75, align 8
  %77 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %78 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = call i32 %76(%struct.bcm47xxsflash* %77, i32 %78, i32 %79)
  %82 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %83 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %82, i32 0, i32 1
  %84 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %83, align 8
  %85 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %86 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %9, align 8
  %89 = load i32, i32* %87, align 4
  %90 = call i32 %84(%struct.bcm47xxsflash* %85, i32 %86, i32 %89)
  %91 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %92 = load i32, i32* @OPCODE_AT_BUF1_WRITE, align 4
  %93 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %91, i32 %92)
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %63

98:                                               ; preds = %72, %63
  %99 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %100 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %99, i32 0, i32 1
  %101 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %100, align 8
  %102 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %103 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 %101(%struct.bcm47xxsflash* %102, i32 %103, i32 %104)
  %106 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %107 = load i32, i32* @OPCODE_AT_BUF1_PROGRAM, align 4
  %108 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %106, i32 %107)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %98, %57
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash*, i32) #1

declare dso_local i32 @bcm47xxsflash_poll(%struct.bcm47xxsflash*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
