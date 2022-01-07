; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_reset_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_reset_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)* }

@RESET_TYPE_MCDI_TIMEOUT = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialise NIC\0A\00", align 1
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not restore PHY settings\0A\00", align 1
@probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_reset_up(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RESET_TYPE_MCDI_TIMEOUT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %18, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = call i32 %19(%struct.efx_nic* %20)
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %26, align 8
  %28 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %29 = call i32 %27(%struct.efx_nic* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %34 = load i32, i32* @drv, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netif_err(%struct.efx_nic* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %160

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %160

43:                                               ; preds = %39
  %44 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %60, align 8
  %62 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %63 = call i32 %61(%struct.efx_nic* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %160

67:                                               ; preds = %56
  %68 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 6
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %71, align 8
  %73 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %74 = call i32 %72(%struct.efx_nic* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %84 = load i32, i32* @drv, align 4
  %85 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_err(%struct.efx_nic* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %82, %77, %67
  br label %90

90:                                               ; preds = %89, %52, %48, %43
  %91 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %92 = call i32 @efx_enable_interrupts(%struct.efx_nic* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %160

96:                                               ; preds = %90
  %97 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %98 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %100, align 8
  %102 = icmp ne i32 (%struct.efx_nic*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %105 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %104, i32 0, i32 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %107, align 8
  %109 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %110 = call i32 %108(%struct.efx_nic* %109)
  br label %111

111:                                              ; preds = %103, %96
  %112 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %113 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %112, i32 0, i32 3
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %118, align 8
  %120 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %121 = call i32 %119(%struct.efx_nic* %120)
  %122 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 2
  %124 = call i32 @up_write(i32* %123)
  %125 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %126 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %125, i32 0, i32 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %128, align 8
  %130 = icmp ne i32 (%struct.efx_nic*)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %111
  %132 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %133 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %135, align 8
  %137 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %138 = call i32 %136(%struct.efx_nic* %137)
  br label %139

139:                                              ; preds = %131, %111
  %140 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %141 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %140, i32 0, i32 1
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %144 = call i32 @efx_start_all(%struct.efx_nic* %143)
  %145 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %146 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %145, i32 0, i32 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %148, align 8
  %150 = icmp ne i32 (%struct.efx_nic*)* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %139
  %152 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %153 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %152, i32 0, i32 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %155, align 8
  %157 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %158 = call i32 %156(%struct.efx_nic* %157)
  br label %159

159:                                              ; preds = %151, %139
  store i32 0, i32* %4, align 4
  br label %173

160:                                              ; preds = %95, %66, %42, %32
  %161 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %162 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %164 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %163, i32 0, i32 3
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %167 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %166, i32 0, i32 2
  %168 = call i32 @up_write(i32* %167)
  %169 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %170 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %169, i32 0, i32 1
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %160, %159
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_enable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @efx_start_all(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
