; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_negotiate_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_negotiate_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i32 0, align 4
@ixgbe_fc_full = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@ixgbe_fc_rx_pause = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Flow Control=RX PAUSE frames only\0A\00", align 1
@ixgbe_fc_tx_pause = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", align 1
@ixgbe_fc_none = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %7
  %22 = load i32, i32* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 4
  store i32 %22, i32* %8, align 4
  br label %120

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %14, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ixgbe_fc_full, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i64, i64* @ixgbe_fc_full, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %47 = call i32 @hw_dbg(%struct.ixgbe_hw* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %55

48:                                               ; preds = %33
  %49 = load i8*, i8** @ixgbe_fc_rx_pause, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %54 = call i32 @hw_dbg(%struct.ixgbe_hw* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %48, %40
  br label %119

56:                                               ; preds = %28, %23
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i8*, i8** @ixgbe_fc_tx_pause, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %82 = call i32 @hw_dbg(%struct.ixgbe_hw* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %118

83:                                               ; preds = %71, %66, %61, %56
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** @ixgbe_fc_rx_pause, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %109 = call i32 @hw_dbg(%struct.ixgbe_hw* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %117

110:                                              ; preds = %98, %93, %88, %83
  %111 = load i8*, i8** @ixgbe_fc_none, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %116 = call i32 @hw_dbg(%struct.ixgbe_hw* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %110, %103
  br label %118

118:                                              ; preds = %117, %76
  br label %119

119:                                              ; preds = %118, %55
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %21
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
