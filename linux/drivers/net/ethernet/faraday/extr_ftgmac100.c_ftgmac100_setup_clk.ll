; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_setup_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_setup_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i64, i32, i32 }

@FTGMAC_25MHZ = common dso_local global i32 0, align 4
@FTGMAC_100MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_setup_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_setup_clk(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %3 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %4 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @devm_clk_get(i32 %5, i32* null)
  %7 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %8 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %10 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %17 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_prepare_enable(i32 %18)
  %20 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %24 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @FTGMAC_25MHZ, align 4
  br label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @FTGMAC_100MHZ, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @clk_set_rate(i32 %22, i32 %32)
  br label %34

34:                                               ; preds = %31, %14
  ret void
}

declare dso_local i32 @devm_clk_get(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
