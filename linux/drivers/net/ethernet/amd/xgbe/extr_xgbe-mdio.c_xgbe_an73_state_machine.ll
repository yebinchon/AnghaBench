; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i8*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@XGBE_AN_CL73_PG_RCV = common dso_local global i32 0, align 4
@XGBE_AN_CL73_INC_LINK = common dso_local global i32 0, align 4
@XGBE_AN_CL73_INT_CMPLT = common dso_local global i32 0, align 4
@XGBE_AN_ERROR = common dso_local global i8* null, align 8
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CL73 AN %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s successful\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Auto negotiation\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Parallel detection\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"error during auto-negotiation, state=%u\0A\00", align 1
@XGBE_RX_BPA = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"CL73 AN result: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an73_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an73_state_machine(%struct.xgbe_prv_data* %0) #0 {
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
  br label %226

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %222, %12
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XGBE_AN_CL73_PG_RCV, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 0
  store i32 129, i32* %22, align 8
  %23 = load i32, i32* @XGBE_AN_CL73_PG_RCV, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %68

29:                                               ; preds = %13
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XGBE_AN_CL73_INC_LINK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 0
  store i32 131, i32* %38, align 8
  %39 = load i32, i32* @XGBE_AN_CL73_INC_LINK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %67

45:                                               ; preds = %29
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XGBE_AN_CL73_INT_CMPLT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 0
  store i32 132, i32* %54, align 8
  %55 = load i32, i32* @XGBE_AN_CL73_INT_CMPLT, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %66

61:                                               ; preds = %45
  %62 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %52
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %20
  br label %69

69:                                               ; preds = %216, %68
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %71 = load i32, i32* @link, align 4
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %73 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @xgbe_state_as_string(i32 %77)
  %79 = call i32 @netif_dbg(%struct.xgbe_prv_data* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  %83 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %84 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %129 [
    i32 128, label %86
    i32 129, label %89
    i32 131, label %98
    i32 132, label %107
    i32 130, label %128
  ]

86:                                               ; preds = %69
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 9
  store i32 0, i32* %88, align 8
  br label %134

89:                                               ; preds = %69
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %91 = call i32 @xgbe_an73_page_received(%struct.xgbe_prv_data* %90)
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %95 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %134

98:                                               ; preds = %69
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 9
  store i32 0, i32* %100, align 8
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %102 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = call i32 @xgbe_an73_incompat_link(%struct.xgbe_prv_data* %103)
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %106 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %134

107:                                              ; preds = %69
  %108 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %109 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 0, i32 1
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %115 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %117 = load i32, i32* @link, align 4
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %122 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)
  %127 = call i32 @netif_dbg(%struct.xgbe_prv_data* %116, i32 %117, i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  br label %134

128:                                              ; preds = %69
  br label %134

129:                                              ; preds = %69
  %130 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %133 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %129, %128, %107, %98, %89, %86
  %135 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %136 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 130
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %141 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %143 = call i32 @xgbe_an73_clear_interrupts(%struct.xgbe_prv_data* %142)
  br label %163

144:                                              ; preds = %134
  %145 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %146 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %154 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @netdev_err(i32 %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %159 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %161 = call i32 @xgbe_an73_clear_interrupts(%struct.xgbe_prv_data* %160)
  br label %162

162:                                              ; preds = %152, %144
  br label %163

163:                                              ; preds = %162, %139
  %164 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %165 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 132
  br i1 %167, label %168, label %210

168:                                              ; preds = %163
  %169 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %170 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %173 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %175 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %174, i32 0, i32 0
  store i32 128, i32* %175, align 8
  %176 = load i8*, i8** @XGBE_RX_BPA, align 8
  %177 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %178 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %177, i32 0, i32 8
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @XGBE_RX_BPA, align 8
  %180 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %181 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %180, i32 0, i32 7
  store i8* %179, i8** %181, align 8
  %182 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %183 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %182, i32 0, i32 6
  store i64 0, i64* %183, align 8
  %184 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %185 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %187, align 8
  %189 = icmp ne i32 (%struct.xgbe_prv_data.0*)* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %168
  %191 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %192 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %194, align 8
  %196 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %197 = bitcast %struct.xgbe_prv_data* %196 to %struct.xgbe_prv_data.0*
  %198 = call i32 %195(%struct.xgbe_prv_data.0* %197)
  br label %199

199:                                              ; preds = %190, %168
  %200 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %201 = load i32, i32* @link, align 4
  %202 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %203 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %206 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @xgbe_state_as_string(i32 %207)
  %209 = call i32 @netif_dbg(%struct.xgbe_prv_data* %200, i32 %201, i32 %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %199, %163
  %211 = load i32, i32* %3, align 4
  %212 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %213 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %69

217:                                              ; preds = %210
  %218 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %219 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %13

223:                                              ; preds = %217
  %224 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %225 = call i32 @xgbe_an73_enable_interrupts(%struct.xgbe_prv_data* %224)
  br label %226

226:                                              ; preds = %223, %11
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i8*) #1

declare dso_local i8* @xgbe_state_as_string(i32) #1

declare dso_local i32 @xgbe_an73_page_received(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an73_incompat_link(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an73_clear_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @xgbe_an73_enable_interrupts(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
