; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"mac link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phylink_mac_change(%struct.phylink* %0, i32 %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.phylink*, %struct.phylink** %3, align 8
  %9 = getelementptr inbounds %struct.phylink, %struct.phylink* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.phylink*, %struct.phylink** %3, align 8
  %12 = call i32 @phylink_run_resolve(%struct.phylink* %11)
  %13 = load %struct.phylink*, %struct.phylink** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @phylink_dbg(%struct.phylink* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %17)
  ret void
}

declare dso_local i32 @phylink_run_resolve(%struct.phylink*) #1

declare dso_local i32 @phylink_dbg(%struct.phylink*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
