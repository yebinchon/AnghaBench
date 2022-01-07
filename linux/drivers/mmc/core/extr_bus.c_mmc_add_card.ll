; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_add_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mmc_add_card.uhs_speeds = internal constant [133 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"SDR50 \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SDR25 \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SDR12 \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SDR104 \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DDR50 \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s:%04x\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"MMC\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SDXC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SDHC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SD-combo\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SDHC-combo\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"%s: new %s%s%s card on SPI\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"high speed \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DDR \00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"%s: new %s%s%s%s%s%s card at address %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ultra high speed \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"HS400 \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"HS200 \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Enhanced strobe \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_add_card(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 2
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mmc_hostname(i32 %11)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_set_name(%struct.TYPE_4__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %40 [
    i32 136, label %20
    i32 135, label %21
    i32 134, label %33
    i32 133, label %34
  ]

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %41

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  %22 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %23 = call i32 @mmc_card_blockaddr(%struct.mmc_card* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = call i32 @mmc_card_ext_capacity(%struct.mmc_card* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %21
  br label %41

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %41

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = call i32 @mmc_card_blockaddr(%struct.mmc_card* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %41

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %39, %33, %32, %20
  %42 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %43 = call i64 @mmc_card_uhs(%struct.mmc_card* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([133 x i8*], [133 x i8*]* @mmc_add_card.uhs_speeds, i64 0, i64 0))
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [133 x i8*], [133 x i8*]* @mmc_add_card.uhs_speeds, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %51, %45, %41
  %58 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @mmc_host_is_spi(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mmc_hostname(i32 %66)
  %68 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %69 = call i64 @mmc_card_hs(%struct.mmc_card* %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %73 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %74 = call i64 @mmc_card_ddr52(%struct.mmc_card* %73)
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %67, i8* %72, i8* %77, i8* %78)
  br label %125

80:                                               ; preds = %57
  %81 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mmc_hostname(i32 %83)
  %85 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %86 = call i64 @mmc_card_uhs(%struct.mmc_card* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %95

89:                                               ; preds = %80
  %90 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %91 = call i64 @mmc_card_hs(%struct.mmc_card* %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  br label %95

95:                                               ; preds = %89, %88
  %96 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), %88 ], [ %94, %89 ]
  %97 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %98 = call i64 @mmc_card_hs400(%struct.mmc_card* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %107

101:                                              ; preds = %95
  %102 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %103 = call i64 @mmc_card_hs200(%struct.mmc_card* %102)
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  br label %107

107:                                              ; preds = %101, %100
  %108 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %100 ], [ %106, %101 ]
  %109 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %110 = call i64 @mmc_card_hs400es(%struct.mmc_card* %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %114 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %115 = call i64 @mmc_card_ddr52(%struct.mmc_card* %114)
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %122 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %84, i8* %96, i8* %108, i8* %113, i8* %118, i8* %119, i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %107, %63
  %126 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %127 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mmc_of_find_child_device(i32 %128, i32 0)
  %130 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %131 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %134 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %133, i32 0, i32 2
  %135 = call i32 @device_enable_async_suspend(%struct.TYPE_4__* %134)
  %136 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %137 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %136, i32 0, i32 2
  %138 = call i32 @device_add(%struct.TYPE_4__* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %146

143:                                              ; preds = %125
  %144 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %145 = call i32 @mmc_card_set_present(%struct.mmc_card* %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %141
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_card_blockaddr(%struct.mmc_card*) #1

declare dso_local i32 @mmc_card_ext_capacity(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_uhs(%struct.mmc_card*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @mmc_host_is_spi(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @mmc_card_hs(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_ddr52(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_hs400(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_hs200(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_hs400es(%struct.mmc_card*) #1

declare dso_local i32 @mmc_of_find_child_device(i32, i32) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_4__*) #1

declare dso_local i32 @device_add(%struct.TYPE_4__*) #1

declare dso_local i32 @mmc_card_set_present(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
