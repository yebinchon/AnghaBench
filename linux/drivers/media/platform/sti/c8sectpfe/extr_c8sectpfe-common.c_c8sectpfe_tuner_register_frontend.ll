; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_tuner_register_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_tuner_register_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfe = type { i32 }
%struct.c8sectpfei = type { i32, i32, %struct.channel_info** }
%struct.channel_info = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dvb_register_frontend failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c8sectpfe_tuner_register_frontend(%struct.c8sectpfe** %0, %struct.c8sectpfei* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c8sectpfe**, align 8
  %7 = alloca %struct.c8sectpfei*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.channel_info*, align 8
  %11 = alloca %struct.dvb_frontend*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.c8sectpfe** %0, %struct.c8sectpfe*** %6, align 8
  store %struct.c8sectpfei* %1, %struct.c8sectpfei** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.c8sectpfei*, %struct.c8sectpfei** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.c8sectpfe* @c8sectpfe_create(%struct.c8sectpfei* %14, i8* %15, i8* %16)
  %18 = load %struct.c8sectpfe**, %struct.c8sectpfe*** %6, align 8
  store %struct.c8sectpfe* %17, %struct.c8sectpfe** %18, align 8
  %19 = load %struct.c8sectpfe**, %struct.c8sectpfe*** %6, align 8
  %20 = load %struct.c8sectpfe*, %struct.c8sectpfe** %19, align 8
  %21 = icmp ne %struct.c8sectpfe* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.c8sectpfei*, %struct.c8sectpfei** %7, align 8
  %29 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = load %struct.c8sectpfei*, %struct.c8sectpfei** %7, align 8
  %34 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %33, i32 0, i32 2
  %35 = load %struct.channel_info**, %struct.channel_info*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.channel_info*, %struct.channel_info** %35, i64 %37
  %39 = load %struct.channel_info*, %struct.channel_info** %38, align 8
  store %struct.channel_info* %39, %struct.channel_info** %10, align 8
  %40 = load %struct.c8sectpfe**, %struct.c8sectpfe*** %6, align 8
  %41 = load %struct.c8sectpfe*, %struct.c8sectpfe** %40, align 8
  %42 = load %struct.channel_info*, %struct.channel_info** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @c8sectpfe_frontend_attach(%struct.dvb_frontend** %11, %struct.c8sectpfe* %41, %struct.channel_info* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %71

48:                                               ; preds = %32
  %49 = load %struct.c8sectpfe**, %struct.c8sectpfe*** %6, align 8
  %50 = getelementptr inbounds %struct.c8sectpfe*, %struct.c8sectpfe** %49, i64 0
  %51 = load %struct.c8sectpfe*, %struct.c8sectpfe** %50, align 8
  %52 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %51, i32 0, i32 0
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %54 = call i32 @dvb_register_frontend(i32* %52, %struct.dvb_frontend* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.c8sectpfei*, %struct.c8sectpfei** %7, align 8
  %59 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %71

63:                                               ; preds = %48
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %65 = load %struct.channel_info*, %struct.channel_info** %10, align 8
  %66 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %65, i32 0, i32 0
  store %struct.dvb_frontend* %64, %struct.dvb_frontend** %66, align 8
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %26

70:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %77

71:                                               ; preds = %57, %47
  %72 = load %struct.c8sectpfe**, %struct.c8sectpfe*** %6, align 8
  %73 = load %struct.c8sectpfe*, %struct.c8sectpfe** %72, align 8
  %74 = load %struct.c8sectpfei*, %struct.c8sectpfei** %7, align 8
  %75 = call i32 @c8sectpfe_tuner_unregister_frontend(%struct.c8sectpfe* %73, %struct.c8sectpfei* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %70, %22
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.c8sectpfe* @c8sectpfe_create(%struct.c8sectpfei*, i8*, i8*) #1

declare dso_local i32 @c8sectpfe_frontend_attach(%struct.dvb_frontend**, %struct.c8sectpfe*, %struct.channel_info*, i32) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.dvb_frontend*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @c8sectpfe_tuner_unregister_frontend(%struct.c8sectpfe*, %struct.c8sectpfei*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
