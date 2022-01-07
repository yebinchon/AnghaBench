; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_msgq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg*)* @bfa_msgq_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_isr(i8* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %struct.bfa_msgq*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_msgq*
  store %struct.bfa_msgq* %7, %struct.bfa_msgq** %5, align 8
  %8 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_mbmsg, %struct.bfi_mbmsg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 129, label %16
    i32 130, label %21
    i32 131, label %26
  ]

12:                                               ; preds = %2
  %13 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %14 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %15 = call i32 @bfa_msgq_init_rsp(%struct.bfa_msgq* %13, %struct.bfi_mbmsg* %14)
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %17, i32 0, i32 1
  %19 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %20 = call i32 @bfa_msgq_rspq_pi_update(i32* %18, %struct.bfi_mbmsg* %19)
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %22, i32 0, i32 0
  %24 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %25 = call i32 @bfa_msgq_cmdq_ci_update(i32* %23, %struct.bfi_mbmsg* %24)
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %27, i32 0, i32 0
  %29 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %30 = call i32 @bfa_msgq_cmdq_copy_req(i32* %28, %struct.bfi_mbmsg* %29)
  br label %33

31:                                               ; preds = %2
  %32 = call i32 @BUG_ON(i32 1)
  br label %33

33:                                               ; preds = %31, %26, %21, %16, %12
  ret void
}

declare dso_local i32 @bfa_msgq_init_rsp(%struct.bfa_msgq*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @bfa_msgq_rspq_pi_update(i32*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @bfa_msgq_cmdq_ci_update(i32*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @bfa_msgq_cmdq_copy_req(i32*, %struct.bfi_mbmsg*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
