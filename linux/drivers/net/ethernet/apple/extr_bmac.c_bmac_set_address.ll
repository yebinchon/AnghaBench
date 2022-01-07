; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.bmac_data = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"bmac: enter set_address\0A\00", align 1
@MADD0 = common dso_local global i32 0, align 4
@MADD1 = common dso_local global i32 0, align 4
@MADD2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bmac: exit set_address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @bmac_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmac_set_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bmac_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %10)
  store %struct.bmac_data* %11, %struct.bmac_data** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = call i32 @XXDEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bmac_data*, %struct.bmac_data** %5, align 8
  %15 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %26, i8* %32, align 1
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i16*
  store i16* %40, i16** %7, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i32, i32* @MADD0, align 4
  %43 = load i16*, i16** %7, align 8
  %44 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %44, i16** %7, align 8
  %45 = load i16, i16* %43, align 2
  %46 = call i32 @bmwrite(%struct.net_device* %41, i32 %42, i16 zeroext %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load i32, i32* @MADD1, align 4
  %49 = load i16*, i16** %7, align 8
  %50 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %50, i16** %7, align 8
  %51 = load i16, i16* %49, align 2
  %52 = call i32 @bmwrite(%struct.net_device* %47, i32 %48, i16 zeroext %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* @MADD2, align 4
  %55 = load i16*, i16** %7, align 8
  %56 = load i16, i16* %55, align 2
  %57 = call i32 @bmwrite(%struct.net_device* %53, i32 %54, i16 zeroext %56)
  %58 = load %struct.bmac_data*, %struct.bmac_data** %5, align 8
  %59 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = call i32 @XXDEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @XXDEBUG(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
