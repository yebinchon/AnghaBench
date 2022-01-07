; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i64, i32*, %struct.cnic_uio_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cnic_uio_dev = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_free_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_resc(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_uio_dev*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %5, i32 0, i32 0
  %7 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  store %struct.cnic_local* %7, %struct.cnic_local** %3, align 8
  %8 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %8, i32 0, i32 11
  %10 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %9, align 8
  store %struct.cnic_uio_dev* %10, %struct.cnic_uio_dev** %4, align 8
  %11 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %12 = icmp ne %struct.cnic_uio_dev* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 11
  store %struct.cnic_uio_dev* null, %struct.cnic_uio_dev** %17, align 8
  %18 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %19 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %4, align 8
  %24 = call i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev* %23)
  br label %25

25:                                               ; preds = %22, %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %28 = call i32 @cnic_free_context(%struct.cnic_dev* %27)
  %29 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %30 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 10
  store i32* null, i32** %34, align 8
  %35 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 9
  store i64 0, i64* %36, align 8
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %38 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 8
  %40 = call i32 @cnic_free_dma(%struct.cnic_dev* %37, i32* %39)
  %41 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %42 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %43 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %42, i32 0, i32 7
  %44 = call i32 @cnic_free_dma(%struct.cnic_dev* %41, i32* %43)
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %46 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 6
  %48 = call i32 @cnic_free_dma(%struct.cnic_dev* %45, i32* %47)
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %50 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @cnic_free_dma(%struct.cnic_dev* %49, i32* %52)
  %54 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %55 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %56 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @cnic_free_dma(%struct.cnic_dev* %54, i32* %57)
  %59 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %60 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %64 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %66 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %70 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 1
  %73 = call i32 @cnic_free_id_tbl(i32* %72)
  %74 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %75 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %74, i32 0, i32 0
  %76 = call i32 @cnic_free_id_tbl(i32* %75)
  ret void
}

declare dso_local i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev*) #1

declare dso_local i32 @cnic_free_context(%struct.cnic_dev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cnic_free_dma(%struct.cnic_dev*, i32*) #1

declare dso_local i32 @cnic_free_id_tbl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
