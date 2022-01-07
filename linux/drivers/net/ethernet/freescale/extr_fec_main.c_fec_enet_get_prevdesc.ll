; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_prevdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_prevdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdesc = type { i32 }
%struct.bufdesc_prop = type { i8*, %struct.bufdesc*, %struct.bufdesc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufdesc* (%struct.bufdesc*, %struct.bufdesc_prop*)* @fec_enet_get_prevdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufdesc* @fec_enet_get_prevdesc(%struct.bufdesc* %0, %struct.bufdesc_prop* %1) #0 {
  %3 = alloca %struct.bufdesc*, align 8
  %4 = alloca %struct.bufdesc_prop*, align 8
  store %struct.bufdesc* %0, %struct.bufdesc** %3, align 8
  store %struct.bufdesc_prop* %1, %struct.bufdesc_prop** %4, align 8
  %5 = load %struct.bufdesc*, %struct.bufdesc** %3, align 8
  %6 = load %struct.bufdesc_prop*, %struct.bufdesc_prop** %4, align 8
  %7 = getelementptr inbounds %struct.bufdesc_prop, %struct.bufdesc_prop* %6, i32 0, i32 2
  %8 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %9 = icmp ule %struct.bufdesc* %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.bufdesc_prop*, %struct.bufdesc_prop** %4, align 8
  %12 = getelementptr inbounds %struct.bufdesc_prop, %struct.bufdesc_prop* %11, i32 0, i32 1
  %13 = load %struct.bufdesc*, %struct.bufdesc** %12, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.bufdesc*, %struct.bufdesc** %3, align 8
  %16 = bitcast %struct.bufdesc* %15 to i8*
  %17 = load %struct.bufdesc_prop*, %struct.bufdesc_prop** %4, align 8
  %18 = getelementptr inbounds %struct.bufdesc_prop, %struct.bufdesc_prop* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %16 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to %struct.bufdesc*
  br label %24

24:                                               ; preds = %14, %10
  %25 = phi %struct.bufdesc* [ %13, %10 ], [ %23, %14 ]
  ret %struct.bufdesc* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
