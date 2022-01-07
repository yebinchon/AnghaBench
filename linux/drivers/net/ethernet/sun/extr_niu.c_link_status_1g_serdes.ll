; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_1g_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_1g_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32 }

@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@PCS_MII_STAT = common dso_local global i32 0, align 4
@PCS_MII_STAT_LINK_STATUS = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_1g_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_1g_serdes(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.niu_link_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.niu*, %struct.niu** %3, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 1
  store %struct.niu_link_config* %12, %struct.niu_link_config** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @SPEED_INVALID, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @DUPLEX_INVALID, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @PCS_MII_STAT, align 4
  %20 = call i32 @nr64_pcs(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PCS_MII_STAT_LINK_STATUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %26 = load i32, i32* @SPEED_1000, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %31 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %34 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.niu*, %struct.niu** %3, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nr64_pcs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
