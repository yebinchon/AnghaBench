; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_ulprx_read_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_ulprx_read_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@ULP_RX_LA_CTL_A = common dso_local global i32 0, align 4
@ULP_RX_LA_WRPTR_A = common dso_local global i32 0, align 4
@ULP_RX_LA_RDPTR_A = common dso_local global i32 0, align 4
@ULPRX_LA_SIZE = common dso_local global i32 0, align 4
@ULP_RX_LA_RDDATA_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_ulprx_read_la(%struct.adapter* %0, i8** %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  store i8** %15, i8*** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = load i32, i32* @ULP_RX_LA_CTL_A, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @t4_write_reg(%struct.adapter* %16, i32 %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = load i32, i32* @ULP_RX_LA_WRPTR_A, align 4
  %22 = call i8* @t4_read_reg(%struct.adapter* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = load i32, i32* @ULP_RX_LA_RDPTR_A, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @t4_write_reg(%struct.adapter* %24, i32 %25, i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %11
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ULPRX_LA_SIZE, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load i32, i32* @ULP_RX_LA_RDDATA_A, align 4
  %35 = call i8* @t4_read_reg(%struct.adapter* %33, i32 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 8
  store i8** %41, i8*** %7, align 8
  br label %28

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
