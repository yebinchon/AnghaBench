; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_init_pdls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_init_pdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [58 x i8] c"hp100: %s: Warning: lp->page_vaddr_algn not initialised!\0A\00", align 1
@MAX_RINGSIZE = common dso_local global i32 0, align 4
@MAX_RX_PDL = common dso_local global i32 0, align 4
@MAX_TX_PDL = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hp100_init_pdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_init_pdls(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hp100_private*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %7)
  store %struct.hp100_private* %8, %struct.hp100_private** %3, align 8
  %9 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %10 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %20 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @MAX_RINGSIZE, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %25 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %28 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %30 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %34 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %33, i32 0, i32 5
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %36 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %35, i32 0, i32 6
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %4, align 8
  %37 = load i32, i32* @MAX_RX_PDL, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %64, %18
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %45 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %52 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %4, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @hp100_init_rxpdl(%struct.net_device* %57, %struct.TYPE_4__* %58, i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  br label %64

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %39

67:                                               ; preds = %39
  %68 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %69 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %71 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %75 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %74, i32 0, i32 1
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %75, align 8
  %76 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %77 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %76, i32 0, i32 2
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %77, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %4, align 8
  %78 = load i32, i32* @MAX_TX_PDL, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %105, %67
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %86 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %93 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %4, align 8
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @hp100_init_txpdl(%struct.net_device* %98, %struct.TYPE_4__* %99, i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %5, align 8
  br label %105

105:                                              ; preds = %83
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108, %13
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hp100_init_rxpdl(%struct.net_device*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @hp100_init_txpdl(%struct.net_device*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
