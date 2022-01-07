; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_dq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_dq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i64 }

@HV7131_REG_HIREFNOH = common dso_local global i32 0, align 4
@HV7131_REG_HIREFNOL = common dso_local global i32 0, align 4
@HV7131_REG_LOREFNOH = common dso_local global i32 0, align 4
@HV7131_REG_LOREFNOL = common dso_local global i32 0, align 4
@HV7131_REG_ARLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_dq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_dq_callback(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @sd_stopN(%struct.gspca_dev* %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @sd_start(%struct.gspca_dev* %17)
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 20
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %156

31:                                               ; preds = %21
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load i32, i32* @HV7131_REG_HIREFNOH, align 4
  %34 = call i32 @se401_get_feature(%struct.gspca_dev* %32, i32 %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32, i32* @HV7131_REG_HIREFNOL, align 4
  %37 = call i32 @se401_get_feature(%struct.gspca_dev* %35, i32 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i32, i32* @HV7131_REG_LOREFNOH, align 4
  %40 = call i32 @se401_get_feature(%struct.gspca_dev* %38, i32 %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32, i32* @HV7131_REG_LOREFNOL, align 4
  %43 = call i32 @se401_get_feature(%struct.gspca_dev* %41, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @HV7131_REG_HIREFNOH, align 4
  %46 = call i32 @se401_get_feature(%struct.gspca_dev* %44, i32 %45)
  %47 = mul nsw i32 256, %46
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load i32, i32* @HV7131_REG_HIREFNOL, align 4
  %50 = call i32 @se401_get_feature(%struct.gspca_dev* %48, i32 %49)
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32, i32* @HV7131_REG_LOREFNOH, align 4
  %54 = call i32 @se401_get_feature(%struct.gspca_dev* %52, i32 %53)
  %55 = mul nsw i32 256, %54
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @HV7131_REG_LOREFNOL, align 4
  %58 = call i32 @se401_get_feature(%struct.gspca_dev* %56, i32 %57)
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ugt i32 %63, 10
  br i1 %64, label %65, label %84

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i32, i32* %5, align 4
  %68 = icmp uge i32 %67, 10
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 63
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %73, %69 ]
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %5, align 4
  %82 = udiv i32 %81, 2
  store i32 %82, i32* %5, align 4
  br label %66

83:                                               ; preds = %74
  br label %107

84:                                               ; preds = %31
  %85 = load i32, i32* %4, align 4
  %86 = icmp ugt i32 %85, 20
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp uge i32 %89, 20
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.sd*, %struct.sd** %3, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i1 [ false, %88 ], [ %95, %91 ]
  br i1 %97, label %98, label %105

98:                                               ; preds = %96
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %4, align 4
  %104 = udiv i32 %103, 2
  store i32 %104, i32* %4, align 4
  br label %88

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.sd*, %struct.sd** %3, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %115

114:                                              ; preds = %107
  store i32 -1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %113
  %116 = load %struct.sd*, %struct.sd** %3, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.sd*, %struct.sd** %3, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.sd*, %struct.sd** %3, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sdiv i32 %132, 2
  %134 = add nsw i32 %127, %133
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %126, %120, %115
  %138 = load %struct.sd*, %struct.sd** %3, align 8
  %139 = getelementptr inbounds %struct.sd, %struct.sd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.sd*, %struct.sd** %3, align 8
  %146 = getelementptr inbounds %struct.sd, %struct.sd* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %148 = load i32, i32* @HV7131_REG_ARLV, align 4
  %149 = load %struct.sd*, %struct.sd** %3, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @se401_set_feature(%struct.gspca_dev* %147, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %143, %137
  %154 = load %struct.sd*, %struct.sd** %3, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %30
  ret void
}

declare dso_local i32 @sd_stopN(%struct.gspca_dev*) #1

declare dso_local i32 @sd_start(%struct.gspca_dev*) #1

declare dso_local i32 @se401_get_feature(%struct.gspca_dev*, i32) #1

declare dso_local i32 @se401_set_feature(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
