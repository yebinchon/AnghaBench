; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dnload_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dnload_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_bcf_hdr = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"signed boot\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"firmware %s: signed boot download initialization failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"non-signed boot\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"firmware %s: non-signed download initialization failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_bcf_hdr*)* @i2400m_dnload_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_dnload_init(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_bcf_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %5, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = call i64 @i2400m_boot_is_signed(%struct.i2400m* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call i32 @d_printf(i32 1, %struct.device* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %17 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %18 = call i32 @i2400m_dnload_init_signed(%struct.i2400m* %16, %struct.i2400m_bcf_hdr* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %31 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %25
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @d_printf(i32 1, %struct.device* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %40 = call i32 @i2400m_dnload_init_nonsigned(%struct.i2400m* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %53 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %45, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @i2400m_boot_is_signed(%struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @i2400m_dnload_init_signed(%struct.i2400m*, %struct.i2400m_bcf_hdr*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @i2400m_dnload_init_nonsigned(%struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
