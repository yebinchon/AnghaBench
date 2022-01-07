; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_rsrc = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NUBUS_DRHW_ASANTE_LC = common dso_local global i64 0, align 8
@NUBUS_DRSW_SONIC_LC = common dso_local global i64 0, align 8
@MACSONIC_DAYNALINK = common dso_local global i32 0, align 4
@NUBUS_DRHW_SONIC = common dso_local global i64 0, align 8
@NUBUS_DRSW_APPLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"DuoDock\00", align 1
@MACSONIC_DUODOCK = common dso_local global i32 0, align 4
@MACSONIC_APPLE = common dso_local global i32 0, align 4
@NUBUS_DRHW_SMC9194 = common dso_local global i64 0, align 8
@NUBUS_DRSW_DAYNA = common dso_local global i64 0, align 8
@MACSONIC_DAYNA = common dso_local global i32 0, align 4
@NUBUS_DRHW_APPLE_SONIC_LC = common dso_local global i64 0, align 8
@MACSONIC_APPLE16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nubus_rsrc*)* @macsonic_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsonic_ident(%struct.nubus_rsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nubus_rsrc*, align 8
  store %struct.nubus_rsrc* %0, %struct.nubus_rsrc** %3, align 8
  %4 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %5 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NUBUS_DRHW_ASANTE_LC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %11 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NUBUS_DRSW_SONIC_LC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @MACSONIC_DAYNALINK, align 4
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %9, %1
  %18 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %19 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NUBUS_DRHW_SONIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %25 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NUBUS_DRSW_APPLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %31 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strstr(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @MACSONIC_DUODOCK, align 4
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %29
  %40 = load i32, i32* @MACSONIC_APPLE, align 4
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %23, %17
  %42 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %43 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NUBUS_DRHW_SMC9194, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %49 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NUBUS_DRSW_DAYNA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @MACSONIC_DAYNA, align 4
  store i32 %54, i32* %2, align 4
  br label %69

55:                                               ; preds = %47, %41
  %56 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %57 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NUBUS_DRHW_APPLE_SONIC_LC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %63 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @MACSONIC_APPLE16, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %61, %55
  store i32 -1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %53, %39, %37, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
