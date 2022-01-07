; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_allocate_ctl_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_allocate_ctl_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl*, i32 }
%struct.wcn36xx_dxe_ctl = type { i32, %struct.wcn36xx_dxe_ctl* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx_dxe_ch*)* @wcn36xx_dxe_allocate_ctl_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_allocate_ctl_block(%struct.wcn36xx_dxe_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %4 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %5 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %6 = alloca i32, align 4
  store %struct.wcn36xx_dxe_ch* %0, %struct.wcn36xx_dxe_ch** %3, align 8
  store %struct.wcn36xx_dxe_ctl* null, %struct.wcn36xx_dxe_ctl** %4, align 8
  store %struct.wcn36xx_dxe_ctl* null, %struct.wcn36xx_dxe_ctl** %5, align 8
  %7 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %8 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_init(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %13 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wcn36xx_dxe_ctl* @kzalloc(i32 16, i32 %17)
  store %struct.wcn36xx_dxe_ctl* %18, %struct.wcn36xx_dxe_ctl** %5, align 8
  %19 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %20 = icmp ne %struct.wcn36xx_dxe_ctl* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %62

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %30 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %30, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %29, %struct.wcn36xx_dxe_ctl** %31, align 8
  %32 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %33 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %33, i32 0, i32 2
  store %struct.wcn36xx_dxe_ctl* %32, %struct.wcn36xx_dxe_ctl** %34, align 8
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %44 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %4, align 8
  %45 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %44, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %43, %struct.wcn36xx_dxe_ctl** %45, align 8
  %46 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %47 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %46, i32 0, i32 1
  %48 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %47, align 8
  %49 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %50 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %49, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %48, %struct.wcn36xx_dxe_ctl** %50, align 8
  br label %55

51:                                               ; preds = %35
  %52 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %53 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %4, align 8
  %54 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %53, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %52, %struct.wcn36xx_dxe_ctl** %54, align 8
  br label %55

55:                                               ; preds = %51, %42
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  store %struct.wcn36xx_dxe_ctl* %57, %struct.wcn36xx_dxe_ctl** %4, align 8
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %10

61:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %67

62:                                               ; preds = %21
  %63 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %3, align 8
  %64 = call i32 @wcn36xx_dxe_free_ctl_block(%struct.wcn36xx_dxe_ch* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.wcn36xx_dxe_ctl* @kzalloc(i32, i32) #1

declare dso_local i32 @wcn36xx_dxe_free_ctl_block(%struct.wcn36xx_dxe_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
