; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.h_mei_cl_host_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.h_mei_cl_host_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*)* @mei_cl_host_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_host_addr(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %3 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %4 = call i64 @mei_cl_is_fixed_address(%struct.mei_cl* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %9 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %7 ]
  ret i32 %12
}

declare dso_local i64 @mei_cl_is_fixed_address(%struct.mei_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
