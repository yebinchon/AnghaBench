; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.TYPE_3__*, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.htc_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @ath6kl_htc_mbox_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_mbox_start(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %6 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %7 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %12 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @ath6kl_hif_disable_intrs(%struct.TYPE_3__* %13)
  %15 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %18 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %31, %1
  %20 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %21 = call %struct.htc_packet* @htc_get_control_buf(%struct.htc_target* %20, i32 0)
  store %struct.htc_packet* %21, %struct.htc_packet** %4, align 8
  %22 = icmp ne %struct.htc_packet* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %25 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %26 = call i32 @htc_add_rxbuf(%struct.htc_target* %24, %struct.htc_packet* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %23
  br label %19

32:                                               ; preds = %19
  %33 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %34 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %37 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %36, i32 0, i32 2
  %38 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %39 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ath6kl_credit_init(i32 %35, i32* %37, i32 %40)
  %42 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %43 = call i32 @dump_cred_dist_stats(%struct.htc_target* %42)
  %44 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %45 = call i32 @htc_setup_tx_complete(%struct.htc_target* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %32
  %51 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %52 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @ath6kl_hif_unmask_intrs(%struct.TYPE_3__* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %59 = call i32 @ath6kl_htc_mbox_stop(%struct.htc_target* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %48, %29
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath6kl_hif_disable_intrs(%struct.TYPE_3__*) #1

declare dso_local %struct.htc_packet* @htc_get_control_buf(%struct.htc_target*, i32) #1

declare dso_local i32 @htc_add_rxbuf(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local i32 @ath6kl_credit_init(i32, i32*, i32) #1

declare dso_local i32 @dump_cred_dist_stats(%struct.htc_target*) #1

declare dso_local i32 @htc_setup_tx_complete(%struct.htc_target*) #1

declare dso_local i32 @ath6kl_hif_unmask_intrs(%struct.TYPE_3__*) #1

declare dso_local i32 @ath6kl_htc_mbox_stop(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
