; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg = type { i32 }
%union.bfi_cee_i2h_msg_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_cee_get_rsp = type { i32 }
%struct.bfa_cee = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg*)* @bfa_cee_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_isr(i8* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %union.bfi_cee_i2h_msg_u*, align 8
  %6 = alloca %struct.bfi_cee_get_rsp*, align 8
  %7 = alloca %struct.bfa_cee*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_cee*
  store %struct.bfa_cee* %9, %struct.bfa_cee** %7, align 8
  %10 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %11 = bitcast %struct.bfi_mbmsg* %10 to %union.bfi_cee_i2h_msg_u*
  store %union.bfi_cee_i2h_msg_u* %11, %union.bfi_cee_i2h_msg_u** %5, align 8
  %12 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %13 = bitcast %struct.bfi_mbmsg* %12 to %struct.bfi_cee_get_rsp*
  store %struct.bfi_cee_get_rsp* %13, %struct.bfi_cee_get_rsp** %6, align 8
  %14 = load %union.bfi_cee_i2h_msg_u*, %union.bfi_cee_i2h_msg_u** %5, align 8
  %15 = bitcast %union.bfi_cee_i2h_msg_u* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 130, label %18
    i32 129, label %24
    i32 128, label %30
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_cee*, %struct.bfa_cee** %7, align 8
  %20 = load %struct.bfi_cee_get_rsp*, %struct.bfi_cee_get_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.bfi_cee_get_rsp, %struct.bfi_cee_get_rsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bfa_cee_get_attr_isr(%struct.bfa_cee* %19, i32 %22)
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.bfa_cee*, %struct.bfa_cee** %7, align 8
  %26 = load %struct.bfi_cee_get_rsp*, %struct.bfi_cee_get_rsp** %6, align 8
  %27 = getelementptr inbounds %struct.bfi_cee_get_rsp, %struct.bfi_cee_get_rsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_cee_get_stats_isr(%struct.bfa_cee* %25, i32 %28)
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.bfa_cee*, %struct.bfa_cee** %7, align 8
  %32 = load %struct.bfi_cee_get_rsp*, %struct.bfi_cee_get_rsp** %6, align 8
  %33 = getelementptr inbounds %struct.bfi_cee_get_rsp, %struct.bfi_cee_get_rsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bfa_cee_reset_stats_isr(%struct.bfa_cee* %31, i32 %34)
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @BUG_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %30, %24, %18
  ret void
}

declare dso_local i32 @bfa_cee_get_attr_isr(%struct.bfa_cee*, i32) #1

declare dso_local i32 @bfa_cee_get_stats_isr(%struct.bfa_cee*, i32) #1

declare dso_local i32 @bfa_cee_reset_stats_isr(%struct.bfa_cee*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
