; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_bad_srom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_bad_srom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de4x5_private = type { i8 }

@enet_det = common dso_local global i32* null, align 8
@SMC = common dso_local global i32 0, align 4
@ACCTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de4x5_private*)* @de4x5_bad_srom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_bad_srom(%struct.de4x5_private* %0) #0 {
  %2 = alloca %struct.de4x5_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.de4x5_private* %0, %struct.de4x5_private** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** @enet_det, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %5
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %2, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 0
  %13 = load i32*, i32** @enet_det, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @memcmp(i8* %12, i32* %16, i32 3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %10
  %20 = load %struct.de4x5_private*, %struct.de4x5_private** %2, align 8
  %21 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds i8, i8* %21, i64 16
  %23 = load i32*, i32** @enet_det, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @memcmp(i8* %22, i32* %26, i32 3)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @SMC, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ACCTON, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %32
  br label %45

41:                                               ; preds = %19, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %40, %5
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
