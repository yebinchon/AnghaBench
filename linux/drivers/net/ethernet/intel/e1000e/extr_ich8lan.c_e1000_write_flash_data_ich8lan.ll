; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_flash_data_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_flash_data_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_WRITE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_WRITE_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i64)* @e1000_write_flash_data_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_flash_data_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.ich8_hws_flash_status, align 8
  %11 = alloca %union.ich8_hws_flash_ctrl, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_pch_spt, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i64, i64* @E1000_ERR_NVM, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %153

32:                                               ; preds = %25
  br label %47

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %36, %33
  %44 = load i64, i64* @E1000_ERR_NVM, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %153

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %145, %47
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %151

63:                                               ; preds = %56
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_pch_spt, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %72 = call i32 @er32flash(i32 %71)
  %73 = ashr i32 %72, 16
  %74 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  store i32 %73, i32* %74, align 4
  br label %80

75:                                               ; preds = %63
  %76 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %77 = call i8* @er16flash(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 1
  %83 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @ICH_CYCLE_WRITE, align 4
  %86 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @e1000_pch_spt, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %96 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = call i32 @ew32flash(i32 %95, i32 %98)
  br label %105

100:                                              ; preds = %80
  %101 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %102 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ew16flash(i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @ew32flash(i32 %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 255
  store i32 %114, i32* %13, align 4
  br label %118

115:                                              ; preds = %105
  %116 = load i64, i64* %9, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @ew32flash(i32 %119, i32 %120)
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %123 = load i32, i32* @ICH_FLASH_WRITE_COMMAND_TIMEOUT, align 4
  %124 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %122, i32 %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %118
  br label %151

128:                                              ; preds = %118
  %129 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %130 = call i8* @er16flash(i32 %129)
  %131 = bitcast %union.ich8_hws_flash_status* %10 to i8**
  store i8* %130, i8** %131, align 8
  %132 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %145

137:                                              ; preds = %128
  %138 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_8__*
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %151

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %136
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  %148 = sext i32 %146 to i64
  %149 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %56, label %151

151:                                              ; preds = %145, %142, %127, %62
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %5, align 8
  br label %153

153:                                              ; preds = %151, %43, %29
  %154 = load i64, i64* %5, align 8
  ret i64 %154
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32flash(i32) #1

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i32 @ew16flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
