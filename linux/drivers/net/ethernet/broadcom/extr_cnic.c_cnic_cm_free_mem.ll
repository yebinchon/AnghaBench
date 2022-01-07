; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_cm_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_free_mem(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %4 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %4, i32 0, i32 0
  %6 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  store %struct.cnic_local* %6, %struct.cnic_local** %3, align 8
  %7 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kvfree(i32* %9)
  %11 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %12 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = call i32 @cnic_free_id_tbl(i32* %14)
  ret void
}

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @cnic_free_id_tbl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
