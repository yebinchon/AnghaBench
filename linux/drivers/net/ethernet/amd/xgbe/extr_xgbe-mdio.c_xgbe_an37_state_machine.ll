; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an37_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an37_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@XGBE_AN_CL37_INT_CMPLT = common dso_local global i32 0, align 4
@XGBE_AN_MODE_CL37_SGMII = common dso_local global i64 0, align 8
@XGBE_SGMII_AN_LINK_STATUS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CL37 AN %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Auto negotiation successful\0A\00", align 1
@XGBE_AN_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"error during auto-negotiation, state=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CL37 AN result: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an37_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an37_state_machine(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %132

12:                                               ; preds = %1
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XGBE_AN_CL37_INT_CMPLT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  store i32 130, i32* %21, align 8
  %22 = load i32, i32* @XGBE_AN_CL37_INT_CMPLT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XGBE_AN_MODE_CL37_SGMII, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XGBE_SGMII_AN_LINK_STATUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 0
  store i32 129, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33, %19
  br label %44

44:                                               ; preds = %43, %12
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = load i32, i32* @link, align 4
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @xgbe_state_as_string(i32 %52)
  %54 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %3, align 4
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %70 [
    i32 128, label %61
    i32 130, label %62
    i32 129, label %69
  ]

61:                                               ; preds = %44
  br label %74

62:                                               ; preds = %44
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %64 = load i32, i32* @link, align 4
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %66 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %74

69:                                               ; preds = %44
  br label %74

70:                                               ; preds = %44
  %71 = load i32, i32* @XGBE_AN_ERROR, align 4
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %73 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %69, %62, %61
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @XGBE_AN_ERROR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @netdev_err(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %87 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = call i32 @xgbe_an37_clear_interrupts(%struct.xgbe_prv_data* %88)
  br label %90

90:                                               ; preds = %80, %74
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 130
  br i1 %94, label %95, label %129

95:                                               ; preds = %90
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %97 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %102 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %101, i32 0, i32 0
  store i32 128, i32* %102, align 8
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %106, align 8
  %108 = icmp ne i32 (%struct.xgbe_prv_data.0*)* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %95
  %110 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %111 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %113, align 8
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %116 = bitcast %struct.xgbe_prv_data* %115 to %struct.xgbe_prv_data.0*
  %117 = call i32 %114(%struct.xgbe_prv_data.0* %116)
  br label %118

118:                                              ; preds = %109, %95
  %119 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %120 = load i32, i32* @link, align 4
  %121 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %122 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %125 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @xgbe_state_as_string(i32 %126)
  %128 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %118, %90
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %131 = call i32 @xgbe_an37_enable_interrupts(%struct.xgbe_prv_data* %130)
  br label %132

132:                                              ; preds = %129, %11
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, ...) #1

declare dso_local i32 @xgbe_state_as_string(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @xgbe_an37_clear_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an37_enable_interrupts(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
