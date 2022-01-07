; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_check_attaching_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_check_attaching_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, %struct.ubi_volume** }
%struct.ubi_volume = type { i64 }
%struct.ubi_attach_info = type { i64, i64 }
%struct.ubi_ainf_volume = type { i32 }

@UBI_INT_VOL_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"found %d volumes while attaching, maximum is %d + %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_INTERNAL_VOL_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"too large volume ID %d found\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"finish volume %d removal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*)* @check_attaching_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_attaching_info(%struct.ubi_device* %0, %struct.ubi_attach_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_attach_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ainf_volume*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %5, align 8
  %10 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = icmp sgt i64 %12, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.ubi_device*, i8*, i64, ...) @ubi_err(%struct.ubi_device* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %131

31:                                               ; preds = %2
  %32 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %33 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sge i64 %34, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %31
  %42 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UBI_INTERNAL_VOL_START, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %49 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.ubi_device*, i8*, i64, ...) @ubi_err(%struct.ubi_device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %131

55:                                               ; preds = %41, %31
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %127, %55
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %60 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %58, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %56
  %66 = call i32 (...) @cond_resched()
  %67 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call %struct.ubi_ainf_volume* @ubi_find_av(%struct.ubi_attach_info* %67, i32 %68)
  store %struct.ubi_ainf_volume* %69, %struct.ubi_ainf_volume** %8, align 8
  %70 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %71 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %70, i32 0, i32 1
  %72 = load %struct.ubi_volume**, %struct.ubi_volume*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %72, i64 %74
  %76 = load %struct.ubi_volume*, %struct.ubi_volume** %75, align 8
  store %struct.ubi_volume* %76, %struct.ubi_volume** %9, align 8
  %77 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %78 = icmp ne %struct.ubi_volume* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %65
  %80 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %81 = icmp ne %struct.ubi_ainf_volume* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %84 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %85 = call i32 @ubi_remove_av(%struct.ubi_attach_info* %83, %struct.ubi_ainf_volume* %84)
  br label %86

86:                                               ; preds = %82, %79
  br label %127

87:                                               ; preds = %65
  %88 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %89 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %96 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @ubi_assert(i32 %99)
  %101 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %102 = icmp ne %struct.ubi_ainf_volume* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %127

104:                                              ; preds = %92
  %105 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %106 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %107 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ubi_msg(%struct.ubi_device* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %111 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %112 = call i32 @ubi_remove_av(%struct.ubi_attach_info* %110, %struct.ubi_ainf_volume* %111)
  br label %126

113:                                              ; preds = %87
  %114 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %115 = icmp ne %struct.ubi_ainf_volume* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %118 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %119 = call i32 @check_av(%struct.ubi_volume* %117, %struct.ubi_ainf_volume* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %126, %103, %86
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %56

130:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %122, %47, %19
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i64, ...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.ubi_ainf_volume* @ubi_find_av(%struct.ubi_attach_info*, i32) #1

declare dso_local i32 @ubi_remove_av(%struct.ubi_attach_info*, %struct.ubi_ainf_volume*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @check_av(%struct.ubi_volume*, %struct.ubi_ainf_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
