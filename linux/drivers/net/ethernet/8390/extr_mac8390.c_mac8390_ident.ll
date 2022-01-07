; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_rsrc = type { i32, i32 }

@MAC8390_NONE = common dso_local global i32 0, align 4
@MAC8390_APPLE = common dso_local global i32 0, align 4
@MAC8390_CABLETRON = common dso_local global i32 0, align 4
@MAC8390_ASANTE = common dso_local global i32 0, align 4
@MAC8390_FARALLON = common dso_local global i32 0, align 4
@MAC8390_INTERLAN = common dso_local global i32 0, align 4
@MAC8390_KINETICS = common dso_local global i32 0, align 4
@NUBUS_DRHW_SMC9194 = common dso_local global i32 0, align 4
@MAC8390_DAYNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nubus_rsrc*)* @mac8390_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac8390_ident(%struct.nubus_rsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nubus_rsrc*, align 8
  store %struct.nubus_rsrc* %0, %struct.nubus_rsrc** %3, align 8
  %4 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %5 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %61 [
    i32 136, label %7
    i32 135, label %15
    i32 134, label %25
    i32 128, label %27
    i32 132, label %27
    i32 131, label %27
    i32 130, label %36
    i32 129, label %38
    i32 133, label %46
  ]

7:                                                ; preds = %1
  %8 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %9 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 141, label %11
    i32 142, label %11
    i32 137, label %11
  ]

11:                                               ; preds = %7, %7, %7
  %12 = load i32, i32* @MAC8390_NONE, align 4
  store i32 %12, i32* %2, align 4
  br label %63

13:                                               ; preds = %7
  %14 = load i32, i32* @MAC8390_APPLE, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %17 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 140, label %19
    i32 139, label %21
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @MAC8390_NONE, align 4
  store i32 %20, i32* %2, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i32, i32* @MAC8390_CABLETRON, align 4
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %15
  %24 = load i32, i32* @MAC8390_APPLE, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load i32, i32* @MAC8390_ASANTE, align 4
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %1, %1, %1
  %28 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %29 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 139
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MAC8390_CABLETRON, align 4
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %27
  %35 = load i32, i32* @MAC8390_APPLE, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %1
  %37 = load i32, i32* @MAC8390_FARALLON, align 4
  store i32 %37, i32* %2, align 4
  br label %63

38:                                               ; preds = %1
  %39 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %40 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %44 [
    i32 138, label %42
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @MAC8390_INTERLAN, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %38
  %45 = load i32, i32* @MAC8390_KINETICS, align 4
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %1
  %47 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %48 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NUBUS_DRHW_SMC9194, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %54 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 138
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %46
  %58 = load i32, i32* @MAC8390_NONE, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @MAC8390_DAYNA, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %1
  %62 = load i32, i32* @MAC8390_NONE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %57, %44, %42, %36, %34, %32, %25, %23, %21, %19, %13, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
