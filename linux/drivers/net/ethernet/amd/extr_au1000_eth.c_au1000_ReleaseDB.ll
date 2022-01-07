; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_ReleaseDB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_ReleaseDB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1000_private = type { %struct.db_dest* }
%struct.db_dest = type { %struct.db_dest* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au1000_ReleaseDB(%struct.au1000_private* %0, %struct.db_dest* %1) #0 {
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca %struct.db_dest*, align 8
  %5 = alloca %struct.db_dest*, align 8
  store %struct.au1000_private* %0, %struct.au1000_private** %3, align 8
  store %struct.db_dest* %1, %struct.db_dest** %4, align 8
  %6 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %7 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %6, i32 0, i32 0
  %8 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  store %struct.db_dest* %8, %struct.db_dest** %5, align 8
  %9 = load %struct.db_dest*, %struct.db_dest** %5, align 8
  %10 = icmp ne %struct.db_dest* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.db_dest*, %struct.db_dest** %4, align 8
  %13 = load %struct.db_dest*, %struct.db_dest** %5, align 8
  %14 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %13, i32 0, i32 0
  store %struct.db_dest* %12, %struct.db_dest** %14, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.db_dest*, %struct.db_dest** %4, align 8
  %17 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %18 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %17, i32 0, i32 0
  store %struct.db_dest* %16, %struct.db_dest** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
