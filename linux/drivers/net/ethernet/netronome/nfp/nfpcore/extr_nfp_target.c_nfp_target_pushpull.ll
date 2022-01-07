; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_target_pushpull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_target_pushpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P32 = common dso_local global i32 0, align 4
@P64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_target_pushpull(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @NFP_CPP_ID_TARGET_of(i32 %6)
  switch i32 %7, label %50 [
    i32 130, label %8
    i32 128, label %12
    i32 132, label %16
    i32 131, label %19
    i32 129, label %23
    i32 136, label %26
    i32 134, label %37
    i32 133, label %40
    i32 135, label %43
    i32 0, label %46
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @nfp6000_nbi(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @P32, align 4
  %15 = call i32 @target_rw(i32 %13, i32 %14, i32 24, i32 4)
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @nfp6000_ila(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @nfp6000_mu(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nfp6000_pci(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 65536
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @P64, align 4
  %32 = call i32 @target_rw(i32 %30, i32 %31, i32 1, i32 1)
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @P32, align 4
  %36 = call i32 @target_rw(i32 %34, i32 %35, i32 1, i32 1)
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @nfp6000_crypto(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @nfp6000_cap_xpb(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @nfp6000_cls(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @P32, align 4
  %49 = call i32 @target_rw(i32 %47, i32 %48, i32 4, i32 4)
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %46, %43, %40, %37, %33, %29, %23, %19, %16, %12, %8
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @NFP_CPP_ID_TARGET_of(i32) #1

declare dso_local i32 @nfp6000_nbi(i32, i32) #1

declare dso_local i32 @target_rw(i32, i32, i32, i32) #1

declare dso_local i32 @nfp6000_ila(i32) #1

declare dso_local i32 @nfp6000_mu(i32, i32) #1

declare dso_local i32 @nfp6000_pci(i32) #1

declare dso_local i32 @nfp6000_crypto(i32) #1

declare dso_local i32 @nfp6000_cap_xpb(i32) #1

declare dso_local i32 @nfp6000_cls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
