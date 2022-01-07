; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init_tx_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init_tx_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { i32, %struct.wcn36xx_dxe_ctl*, i32* }
%struct.wcn36xx_dxe_mem_pool = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_mem_pool*)* @wcn36xx_dxe_init_tx_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_dxe_init_tx_bd(%struct.wcn36xx_dxe_ch* %0, %struct.wcn36xx_dxe_mem_pool* %1) #0 {
  %3 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %4 = alloca %struct.wcn36xx_dxe_mem_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  store %struct.wcn36xx_dxe_ch* %0, %struct.wcn36xx_dxe_ch** %3, align 8
  store %struct.wcn36xx_dxe_mem_pool* %1, %struct.wcn36xx_dxe_mem_pool** %4, align 8
  %10 = load %struct.wcn36xx_dxe_mem_pool*, %struct.wcn36xx_dxe_mem_pool** %4, align 8
  %11 = getelementptr inbounds %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.wcn36xx_dxe_mem_pool*, %struct.wcn36xx_dxe_mem_pool** %4, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.wcn36xx_dxe_mem_pool*, %struct.wcn36xx_dxe_mem_pool** %4, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %19, i32 0, i32 1
  %21 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %20, align 8
  store %struct.wcn36xx_dxe_ctl* %21, %struct.wcn36xx_dxe_ctl** %9, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %56, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %9, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %9, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %8, align 8
  br label %52

47:                                               ; preds = %28
  %48 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %9, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %9, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %32
  %53 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %9, align 8
  %54 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %53, i32 0, i32 1
  %55 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %54, align 8
  store %struct.wcn36xx_dxe_ctl* %55, %struct.wcn36xx_dxe_ctl** %9, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %22

59:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
