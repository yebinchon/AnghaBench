; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"vivid_fb_set_var\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"vivid_fb_set_var - Invalid bpp\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, %struct.fb_var_screeninfo*)* @vivid_fb_set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_fb_set_var(%struct.vivid_dev* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %6 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %7 = call i32 @dprintk(%struct.vivid_dev* %6, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 16
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %14 = call i32 @dprintk(%struct.vivid_dev* %13, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
