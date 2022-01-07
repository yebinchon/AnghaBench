; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pxs3_get_pinmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pxs3_get_pinmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ave_private = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ave_private*, i32, i32)* @ave_pxs3_get_pinmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_pxs3_get_pinmode(%struct.ave_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ave_private* %0, %struct.ave_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @SG_ETPINMODE_RMII(i32 %14)
  %16 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %17 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %24
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @SG_ETPINMODE_RMII(i32 %20)
  %22 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %26 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %25, i32 0, i32 0
  store i8* null, i8** %26, align 8
  br label %30

27:                                               ; preds = %13
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %24, %19
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27, %10
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i8* @SG_ETPINMODE_RMII(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
