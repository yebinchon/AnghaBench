; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_mal.c_mal_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_mal.c_mal_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mal_instance = type { i32 }

@MAL_ESR = common dso_local global i32 0, align 4
@MAL_ESR_EVB = common dso_local global i32 0, align 4
@MAL_ESR_DE = common dso_local global i32 0, align 4
@MAL_ESR_CIDT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mal_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mal_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mal_instance*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mal_instance*
  store %struct.mal_instance* %9, %struct.mal_instance** %6, align 8
  %10 = load %struct.mal_instance*, %struct.mal_instance** %6, align 8
  %11 = load i32, i32* @MAL_ESR, align 4
  %12 = call i32 @get_mal_dcrn(%struct.mal_instance* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAL_ESR_EVB, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAL_ESR_DE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAL_ESR_CIDT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @mal_rxde(i32 %28, i8* %29)
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @mal_txde(i32 %32, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @mal_serr(i32 %36, i8* %37)
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %35, %31, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @get_mal_dcrn(%struct.mal_instance*, i32) #1

declare dso_local i32 @mal_rxde(i32, i8*) #1

declare dso_local i32 @mal_txde(i32, i8*) #1

declare dso_local i32 @mal_serr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
