; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp6000_mu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp6000_mu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nfp6000_mu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp6000_mu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 137438953472
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @nfp6000_mu_ctm(i32 %10)
  store i32 %11, i32* %5, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 549755813888
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @nfp6000_mu_emu(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 652835028992
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @nfp6000_mu_ctm(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 670014898176
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @nfp6000_mu_emu(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 687194767360
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @nfp6000_mu_imu(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @nfp6000_mu_ctm(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %16
  br label %47

47:                                               ; preds = %46, %9
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @nfp6000_mu_ctm(i32) #1

declare dso_local i32 @nfp6000_mu_emu(i32) #1

declare dso_local i32 @nfp6000_mu_imu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
