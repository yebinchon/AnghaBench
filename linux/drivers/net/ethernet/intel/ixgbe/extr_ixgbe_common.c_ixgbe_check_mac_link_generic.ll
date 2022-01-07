; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP2 = common dso_local global i64 0, align 8
@IXGBE_ESDP_SDP0 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"LINKS changed from %08X to %08X\0A\00", align 1
@IXGBE_LINK_UP_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_82599 = common dso_local global i64 0, align 8
@ixgbe_mac_X550 = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_NON_STD = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T_L = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_check_mac_link_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %15 = call i64 @ixgbe_need_crosstalk_fix(%struct.ixgbe_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %28
    i32 128, label %28
  ]

22:                                               ; preds = %17
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %24 = load i32, i32* @IXGBE_ESDP, align 4
  %25 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  %26 = load i64, i64* @IXGBE_ESDP_SDP2, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %13, align 8
  br label %35

28:                                               ; preds = %17, %17
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = load i32, i32* @IXGBE_ESDP, align 4
  %31 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  %32 = load i64, i64* @IXGBE_ESDP_SDP0, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %13, align 8
  br label %35

34:                                               ; preds = %17
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %34, %28, %22
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %161

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %45 = load i32, i32* @IXGBE_LINKS, align 4
  %46 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %44, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %48 = load i32, i32* @IXGBE_LINKS, align 4
  %49 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %47, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @hw_dbg(%struct.ixgbe_hw* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %43
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  store i32 1, i32* %72, align 4
  br label %83

73:                                               ; preds = %66
  %74 = load i32*, i32** %8, align 8
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %73
  %76 = call i32 @msleep(i32 100)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %78 = load i32, i32* @IXGBE_LINKS, align 4
  %79 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %62

83:                                               ; preds = %71, %62
  br label %94

84:                                               ; preds = %58
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32*, i32** %8, align 8
  store i32 1, i32* %90, align 4
  br label %93

91:                                               ; preds = %84
  %92 = load i32*, i32** %8, align 8
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @IXGBE_LINKS_SPEED_82599, align 8
  %97 = and i64 %95, %96
  switch i64 %97, label %157 [
    i64 133, label %98
    i64 131, label %117
    i64 134, label %120
    i64 132, label %139
  ]

98:                                               ; preds = %94
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ixgbe_mac_X550, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @IXGBE_LINKS_SPEED_NON_STD, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %116

113:                                              ; preds = %105, %98
  %114 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  br label %160

117:                                              ; preds = %94
  %118 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  br label %160

120:                                              ; preds = %94
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ixgbe_mac_X550, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @IXGBE_LINKS_SPEED_NON_STD, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  br label %138

135:                                              ; preds = %127, %120
  %136 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %132
  br label %160

139:                                              ; preds = %94
  %140 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %143 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %139
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T_L, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147, %139
  %154 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %147
  br label %160

157:                                              ; preds = %94
  %158 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %156, %138, %117, %116
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %38
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i64 @ixgbe_need_crosstalk_fix(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
