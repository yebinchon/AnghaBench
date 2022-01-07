; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_smc_controller = type { %struct.aspeed_smc_chip**, %struct.TYPE_3__* }
%struct.aspeed_smc_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_smc_controller*)* @aspeed_smc_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_smc_unregister(%struct.aspeed_smc_controller* %0) #0 {
  %2 = alloca %struct.aspeed_smc_controller*, align 8
  %3 = alloca %struct.aspeed_smc_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_smc_controller* %0, %struct.aspeed_smc_controller** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %2, align 8
  %8 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = load %struct.aspeed_smc_controller*, %struct.aspeed_smc_controller** %2, align 8
  %15 = getelementptr inbounds %struct.aspeed_smc_controller, %struct.aspeed_smc_controller* %14, i32 0, i32 0
  %16 = load %struct.aspeed_smc_chip**, %struct.aspeed_smc_chip*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %16, i64 %18
  %20 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %19, align 8
  store %struct.aspeed_smc_chip* %20, %struct.aspeed_smc_chip** %3, align 8
  %21 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %22 = icmp ne %struct.aspeed_smc_chip* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @mtd_device_unregister(i32* %26)
  br label %28

28:                                               ; preds = %23, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @mtd_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
