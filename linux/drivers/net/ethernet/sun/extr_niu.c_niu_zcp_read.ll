; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_zcp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_zcp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32 }

@ZCP_RAM_ACC = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ZCP read busy won't clear, ZCP_RAM_ACC[%llx]\0A\00", align 1
@ZCP_RAM_ACC_READ = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_ZFCID_SHIFT = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_RAM_SEL_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ZCP read busy2 won't clear, ZCP_RAM_ACC[%llx]\0A\00", align 1
@ZCP_RAM_DATA0 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA1 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA2 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA3 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i64*)* @niu_zcp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_zcp_read(%struct.niu* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.niu*, %struct.niu** %5, align 8
  %10 = load i32, i32* @ZCP_RAM_ACC, align 4
  %11 = load i32, i32* @ZCP_RAM_ACC_BUSY, align 4
  %12 = call i32 @niu_wait_bits_clear(%struct.niu* %9, i32 %10, i32 %11, i32 1000, i32 100)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.niu*, %struct.niu** %5, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ZCP_RAM_ACC, align 4
  %20 = call i64 @nr64(i32 %19)
  %21 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %3
  %24 = load i32, i32* @ZCP_RAM_ACC, align 4
  %25 = load i32, i32* @ZCP_RAM_ACC_READ, align 4
  %26 = load i32, i32* @ZCP_RAM_ACC_ZFCID_SHIFT, align 4
  %27 = shl i32 0, %26
  %28 = or i32 %25, %27
  %29 = load %struct.niu*, %struct.niu** %5, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ZCP_RAM_SEL_CFIFO(i32 %31)
  %33 = load i32, i32* @ZCP_RAM_ACC_RAM_SEL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  %36 = call i32 @nw64(i32 %24, i32 %35)
  %37 = load %struct.niu*, %struct.niu** %5, align 8
  %38 = load i32, i32* @ZCP_RAM_ACC, align 4
  %39 = load i32, i32* @ZCP_RAM_ACC_BUSY, align 4
  %40 = call i32 @niu_wait_bits_clear(%struct.niu* %37, i32 %38, i32 %39, i32 1000, i32 100)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %23
  %44 = load %struct.niu*, %struct.niu** %5, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ZCP_RAM_ACC, align 4
  %48 = call i64 @nr64(i32 %47)
  %49 = call i32 @netdev_err(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %72

51:                                               ; preds = %23
  %52 = load i32, i32* @ZCP_RAM_DATA0, align 4
  %53 = call i64 @nr64(i32 %52)
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @ZCP_RAM_DATA1, align 4
  %57 = call i64 @nr64(i32 %56)
  %58 = load i64*, i64** %7, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @ZCP_RAM_DATA2, align 4
  %61 = call i64 @nr64(i32 %60)
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @ZCP_RAM_DATA3, align 4
  %65 = call i64 @nr64(i32 %64)
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 3
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @ZCP_RAM_DATA4, align 4
  %69 = call i64 @nr64(i32 %68)
  %70 = load i64*, i64** %7, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 4
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %51, %43, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @niu_wait_bits_clear(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i64 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @ZCP_RAM_SEL_CFIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
