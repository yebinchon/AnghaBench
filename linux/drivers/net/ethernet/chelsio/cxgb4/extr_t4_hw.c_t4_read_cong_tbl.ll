; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cong_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cong_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@NMTUS = common dso_local global i32 0, align 4
@NCCTRL_WIN = common dso_local global i32 0, align 4
@TP_CCTRL_TABLE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_read_cong_tbl(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @NMTUS, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @NCCTRL_WIN, align 4
  %10 = zext i32 %9 to i64
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NMTUS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NCCTRL_WIN, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @TP_CCTRL_TABLE_A, align 4
  %23 = call i32 @ROWINDEX_V(i32 65535)
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 5
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @t4_write_reg(%struct.adapter* %21, i32 %22, i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i32, i32* @TP_CCTRL_TABLE_A, align 4
  %32 = call i64 @t4_read_reg(%struct.adapter* %30, i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 8191
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nsw i64 %37, %10
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %16

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %11
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @ROWINDEX_V(i32) #1

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
