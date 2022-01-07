; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_is_network_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_is_network_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.libipw_hdr_4addr*)* @is_network_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_network_packet(%struct.ipw_priv* %0, %struct.libipw_hdr_4addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.libipw_hdr_4addr*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.libipw_hdr_4addr* %1, %struct.libipw_hdr_4addr** %5, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %83 [
    i32 129, label %11
    i32 128, label %47
  ]

11:                                               ; preds = %2
  %12 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %13 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_addr_equal(i32 %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %84

23:                                               ; preds = %11
  %24 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %25 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_multicast_ether_addr(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %31 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ether_addr_equal(i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %23
  %38 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %39 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ether_addr_equal(i32 %40, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %2
  %48 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %49 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ether_addr_equal(i32 %50, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %84

59:                                               ; preds = %47
  %60 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %61 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @is_multicast_ether_addr(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %67 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ether_addr_equal(i32 %68, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %59
  %74 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %75 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %78 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ether_addr_equal(i32 %76, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %73, %65, %58, %37, %29, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
