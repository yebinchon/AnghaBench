; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_release_arcbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_release_arcbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32*, i32, i32 }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"release_arcbuf: freed #%d; buffer queue is now: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"#%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @release_arcbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_arcbuf(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arcnet_local*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.arcnet_local* %8, %struct.arcnet_local** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %11 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %14 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  store i32 %9, i32* %18, align 4
  %19 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %20 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = srem i32 %21, 5
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @D_DURING, align 4
  %24 = call i64 @BUGLVL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load i32, i32* @D_DURING, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @arc_printk(i32 %27, %struct.net_device* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %32 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %50, %26
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %37 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32, i32* @D_DURING, align 4
  %42 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %43 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @arc_cont(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = srem i32 %52, 5
  store i32 %53, i32* %6, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* @D_DURING, align 4
  %56 = call i32 (i32, i8*, ...) @arc_cont(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %2
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @arc_cont(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
