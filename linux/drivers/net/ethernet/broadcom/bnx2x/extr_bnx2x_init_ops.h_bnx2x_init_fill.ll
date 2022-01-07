; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@FW_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32, i32)* @bnx2x_init_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_fill(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %15, 4
  %17 = load i32, i32* @FW_BUF_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @FW_BUF_SIZE, align 4
  br label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sdiv i32 %26, 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = call i32 @GUNZIP_BUF(%struct.bnx2x* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @memset(i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %51, %24
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @min(i32 %38, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @bnx2x_write_big_buf(%struct.bnx2x* %43, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %33

55:                                               ; preds = %33
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @GUNZIP_BUF(%struct.bnx2x*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bnx2x_write_big_buf(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
