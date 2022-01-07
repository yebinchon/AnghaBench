; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_hbm_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_hbm_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32 }
%struct.mei_msg_hdr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_msg_hdr*)* @mei_cl_hbm_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_hbm_equal(%struct.mei_cl* %0, %struct.mei_msg_hdr* %1) #0 {
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_msg_hdr*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  store %struct.mei_msg_hdr* %1, %struct.mei_msg_hdr** %4, align 8
  %5 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %6 = call i64 @mei_cl_host_addr(%struct.mei_cl* %5)
  %7 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %13 = call i64 @mei_cl_me_id(%struct.mei_cl* %12)
  %14 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ false, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @mei_cl_host_addr(%struct.mei_cl*) #1

declare dso_local i64 @mei_cl_me_id(%struct.mei_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
