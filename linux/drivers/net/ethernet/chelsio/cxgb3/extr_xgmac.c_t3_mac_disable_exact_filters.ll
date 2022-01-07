; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_disable_exact_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_disable_exact_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32 }

@A_XGM_RX_EXACT_MATCH_LOW_1 = common dso_local global i32 0, align 4
@EXACT_ADDR_FILTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_mac_disable_exact_filters(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %6 = load %struct.cmac*, %struct.cmac** %2, align 8
  %7 = getelementptr inbounds %struct.cmac, %struct.cmac* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @A_XGM_RX_EXACT_MATCH_LOW_1, align 4
  %10 = add i32 %8, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @EXACT_ADDR_FILTERS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.cmac*, %struct.cmac** %2, align 8
  %17 = getelementptr inbounds %struct.cmac, %struct.cmac* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @t3_read_reg(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.cmac*, %struct.cmac** %2, align 8
  %22 = getelementptr inbounds %struct.cmac, %struct.cmac* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @t3_write_reg(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 8
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.cmac*, %struct.cmac** %2, align 8
  %34 = getelementptr inbounds %struct.cmac, %struct.cmac* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @A_XGM_RX_EXACT_MATCH_LOW_1, align 4
  %37 = call i32 @t3_read_reg(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @t3_read_reg(i32, i32) #1

declare dso_local i32 @t3_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
