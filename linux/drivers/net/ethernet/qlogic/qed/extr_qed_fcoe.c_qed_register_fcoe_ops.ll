; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_register_fcoe_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_register_fcoe_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_fcoe_cb_ops* }
%struct.qed_fcoe_cb_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, %struct.qed_fcoe_cb_ops*, i8*)* @qed_register_fcoe_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_register_fcoe_ops(%struct.qed_dev* %0, %struct.qed_fcoe_cb_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_fcoe_cb_ops*, align 8
  %6 = alloca i8*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_fcoe_cb_ops* %1, %struct.qed_fcoe_cb_ops** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.qed_fcoe_cb_ops*, %struct.qed_fcoe_cb_ops** %5, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.qed_fcoe_cb_ops* %7, %struct.qed_fcoe_cb_ops** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
