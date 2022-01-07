; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8842_adapter = type { i32, i64 }

@MICREL_KS884X = common dso_local global i32 0, align 4
@REG_GRR = common dso_local global i64 0, align 8
@REG_TIMB_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8842_adapter*)* @ks8842_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8842_reset(%struct.ks8842_adapter* %0) #0 {
  %2 = alloca %struct.ks8842_adapter*, align 8
  store %struct.ks8842_adapter* %0, %struct.ks8842_adapter** %2, align 8
  %3 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @MICREL_KS884X, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %11 = load i64, i64* @REG_GRR, align 8
  %12 = call i32 @ks8842_write16(%struct.ks8842_adapter* %10, i32 3, i32 1, i64 %11)
  %13 = call i32 @msleep(i32 10)
  %14 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_GRR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite16(i32 0, i64 %18)
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_TIMB_RST, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 1, i64 %25)
  %27 = call i32 @msleep(i32 20)
  br label %28

28:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @ks8842_write16(%struct.ks8842_adapter*, i32, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
