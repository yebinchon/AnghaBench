; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_qp_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_qp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32, i32 }
%struct.scifmsg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SCIF_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_qp_response(i32 %0, %struct.scif_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scifmsg, align 4
  store i32 %0, i32* %3, align 4
  store %struct.scif_dev* %1, %struct.scif_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %8 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %9 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @scif_setup_qp_connect_response(%struct.scif_dev* %7, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @SCIF_INIT, align 4
  %17 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %19 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %24 = call i32 @scif_nodeqp_send(%struct.scif_dev* %23, %struct.scifmsg* %6)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @scif_setup_qp_connect_response(%struct.scif_dev*, i32, i32) #1

declare dso_local i32 @scif_nodeqp_send(%struct.scif_dev*, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
