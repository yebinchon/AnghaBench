; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym = type { i32 }
%struct.nfp_rtsym_table = type { i32, %struct.nfp_rtsym* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_rtsym* @nfp_rtsym_get(%struct.nfp_rtsym_table* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_rtsym*, align 8
  %4 = alloca %struct.nfp_rtsym_table*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_rtsym_table* %0, %struct.nfp_rtsym_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %7 = icmp ne %struct.nfp_rtsym_table* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.nfp_rtsym* null, %struct.nfp_rtsym** %3, align 8
  br label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.nfp_rtsym* null, %struct.nfp_rtsym** %3, align 8
  br label %23

16:                                               ; preds = %9
  %17 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %17, i32 0, i32 1
  %19 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %19, i64 %21
  store %struct.nfp_rtsym* %22, %struct.nfp_rtsym** %3, align 8
  br label %23

23:                                               ; preds = %16, %15, %8
  %24 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  ret %struct.nfp_rtsym* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
