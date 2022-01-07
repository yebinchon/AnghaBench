; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_write_big_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_write_big_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i64)* @bnx2x_write_big_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_write_big_buf(%struct.bnx2x* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %16 = call i32 @GUNZIP_PHYS(%struct.bnx2x* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bnx2x_write_dmae_phys_len(%struct.bnx2x* %14, i32 %16, i32 %17, i32 %18)
  br label %42

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %25 = call i64 @CHIP_IS_E1(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = call i32 @GUNZIP_BUF(%struct.bnx2x* %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bnx2x_init_ind_wr(%struct.bnx2x* %28, i32 %29, i32 %31, i32 %32)
  br label %41

34:                                               ; preds = %23, %20
  %35 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = call i32 @GUNZIP_BUF(%struct.bnx2x* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @bnx2x_init_str_wr(%struct.bnx2x* %35, i32 %36, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @bnx2x_write_dmae_phys_len(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_PHYS(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_ind_wr(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_BUF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_str_wr(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
