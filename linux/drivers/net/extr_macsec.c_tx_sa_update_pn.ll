; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_tx_sa_update_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_tx_sa_update_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_tx_sa = type { i64, i32, i32 }
%struct.macsec_secy = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"PN wrapped, transitioning to !oper\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.macsec_tx_sa*, %struct.macsec_secy*)* @tx_sa_update_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tx_sa_update_pn(%struct.macsec_tx_sa* %0, %struct.macsec_secy* %1) #0 {
  %3 = alloca %struct.macsec_tx_sa*, align 8
  %4 = alloca %struct.macsec_secy*, align 8
  %5 = alloca i64, align 8
  store %struct.macsec_tx_sa* %0, %struct.macsec_tx_sa** %3, align 8
  store %struct.macsec_secy* %1, %struct.macsec_secy** %4, align 8
  %6 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %7 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %10 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %13 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %17 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %23 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %25 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.macsec_secy*, %struct.macsec_secy** %4, align 8
  %30 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %3, align 8
  %34 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
