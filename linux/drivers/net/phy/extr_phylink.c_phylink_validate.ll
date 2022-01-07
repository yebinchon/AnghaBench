; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64*, %struct.phylink_link_state*)* }
%struct.phylink_link_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, i64*, %struct.phylink_link_state*)* @phylink_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_validate(%struct.phylink* %0, i64* %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.phylink_link_state*, align 8
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %7 = load %struct.phylink*, %struct.phylink** %4, align 8
  %8 = getelementptr inbounds %struct.phylink, %struct.phylink* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, i64*, %struct.phylink_link_state*)*, i32 (i32, i64*, %struct.phylink_link_state*)** %10, align 8
  %12 = load %struct.phylink*, %struct.phylink** %4, align 8
  %13 = getelementptr inbounds %struct.phylink, %struct.phylink* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %17 = call i32 %11(i32 %14, i64* %15, %struct.phylink_link_state* %16)
  %18 = load i64*, i64** %5, align 8
  %19 = call i64 @phylink_is_empty_linkmode(i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  ret i32 %26
}

declare dso_local i64 @phylink_is_empty_linkmode(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
