; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_ld20_get_pinmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_ld20_get_pinmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ave_private = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ave_private*, i32, i64)* @ave_ld20_get_pinmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_ld20_get_pinmode(%struct.ave_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ave_private* %0, %struct.ave_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %29

13:                                               ; preds = %3
  %14 = call i8* @SG_ETPINMODE_RMII(i32 0)
  %15 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %16 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %25 [
    i32 128, label %18
    i32 129, label %22
  ]

18:                                               ; preds = %13
  %19 = call i8* @SG_ETPINMODE_RMII(i32 0)
  %20 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %21 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %28

22:                                               ; preds = %13
  %23 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %24 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %23, i32 0, i32 0
  store i8* null, i8** %24, align 8
  br label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %22, %18
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25, %10
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i8* @SG_ETPINMODE_RMII(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
