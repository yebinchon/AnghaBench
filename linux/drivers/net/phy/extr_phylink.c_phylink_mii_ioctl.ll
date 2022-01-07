; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_mii_ioctl(%struct.phylink* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_ioctl_data*, align 8
  %8 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %10 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %9)
  store %struct.mii_ioctl_data* %10, %struct.mii_ioctl_data** %7, align 8
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.phylink*, %struct.phylink** %4, align 8
  %13 = getelementptr inbounds %struct.phylink, %struct.phylink* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %55 [
    i32 130, label %18
    i32 129, label %27
    i32 128, label %43
  ]

18:                                               ; preds = %16
  %19 = load %struct.phylink*, %struct.phylink** %4, align 8
  %20 = getelementptr inbounds %struct.phylink, %struct.phylink* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %18
  %28 = load %struct.phylink*, %struct.phylink** %4, align 8
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @phylink_phy_read(%struct.phylink* %28, i32 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %41 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %27
  br label %62

43:                                               ; preds = %16
  %44 = load %struct.phylink*, %struct.phylink** %4, align 8
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %46 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %49 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phylink_phy_write(%struct.phylink* %44, i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %62

55:                                               ; preds = %16
  %56 = load %struct.phylink*, %struct.phylink** %4, align 8
  %57 = getelementptr inbounds %struct.phylink, %struct.phylink* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @phy_mii_ioctl(%struct.TYPE_4__* %58, %struct.ifreq* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %55, %43, %42
  br label %100

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %96 [
    i32 130, label %65
    i32 129, label %68
    i32 128, label %84
  ]

65:                                               ; preds = %63
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %65
  %69 = load %struct.phylink*, %struct.phylink** %4, align 8
  %70 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %71 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %74 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @phylink_mii_read(%struct.phylink* %69, i32 %72, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %82 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %68
  br label %99

84:                                               ; preds = %63
  %85 = load %struct.phylink*, %struct.phylink** %4, align 8
  %86 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %87 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %90 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %93 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @phylink_mii_write(%struct.phylink* %85, i32 %88, i32 %91, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %99

96:                                               ; preds = %63
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %84, %83
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @phylink_phy_read(%struct.phylink*, i32, i32) #1

declare dso_local i32 @phylink_phy_write(%struct.phylink*, i32, i32, i32) #1

declare dso_local i32 @phy_mii_ioctl(%struct.TYPE_4__*, %struct.ifreq*, i32) #1

declare dso_local i32 @phylink_mii_read(%struct.phylink*, i32, i32) #1

declare dso_local i32 @phylink_mii_write(%struct.phylink*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
