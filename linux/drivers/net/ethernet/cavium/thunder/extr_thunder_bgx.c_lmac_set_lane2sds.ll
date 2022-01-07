; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_lmac_set_lane2sds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_lmac_set_lane2sds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }
%struct.lmac = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, %struct.lmac*)* @lmac_set_lane2sds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmac_set_lane2sds(%struct.bgx* %0, %struct.lmac* %1) #0 {
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca %struct.lmac*, align 8
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  store %struct.lmac* %1, %struct.lmac** %4, align 8
  %5 = load %struct.lmac*, %struct.lmac** %4, align 8
  %6 = getelementptr inbounds %struct.lmac, %struct.lmac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 131, label %8
    i32 129, label %8
    i32 130, label %14
    i32 128, label %14
    i32 133, label %14
    i32 132, label %17
    i32 134, label %26
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.lmac*, %struct.lmac** %4, align 8
  %10 = getelementptr inbounds %struct.lmac, %struct.lmac* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lmac*, %struct.lmac** %4, align 8
  %13 = getelementptr inbounds %struct.lmac, %struct.lmac* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %35

14:                                               ; preds = %2, %2, %2
  %15 = load %struct.lmac*, %struct.lmac** %4, align 8
  %16 = getelementptr inbounds %struct.lmac, %struct.lmac* %15, i32 0, i32 1
  store i32 228, i32* %16, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.lmac*, %struct.lmac** %4, align 8
  %19 = getelementptr inbounds %struct.lmac, %struct.lmac* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 14, i32 4
  %24 = load %struct.lmac*, %struct.lmac** %4, align 8
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.bgx*, %struct.bgx** %3, align 8
  %28 = load %struct.lmac*, %struct.lmac** %4, align 8
  %29 = call i32 @bgx_get_lane2sds_cfg(%struct.bgx* %27, %struct.lmac* %28)
  %30 = load %struct.lmac*, %struct.lmac** %4, align 8
  %31 = getelementptr inbounds %struct.lmac, %struct.lmac* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.lmac*, %struct.lmac** %4, align 8
  %34 = getelementptr inbounds %struct.lmac, %struct.lmac* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %26, %17, %14, %8
  ret void
}

declare dso_local i32 @bgx_get_lane2sds_cfg(%struct.bgx*, %struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
