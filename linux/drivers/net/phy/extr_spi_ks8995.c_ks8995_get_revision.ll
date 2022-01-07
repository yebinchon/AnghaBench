; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_get_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8995_switch = type { %struct.TYPE_4__*, i8*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@KS8995_REG_ID0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"chip family id mismatch: expected 0x%02x but 0x%02x read\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KS8995_REG_ID1 = common dso_local global i32 0, align 4
@CHIPID_M = common dso_local global i32 0, align 4
@KSZ8864_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"unsupported chip id for KS8995 family: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"unsupported chip id for KSZ8795 family: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unsupported family id: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks8995_switch*)* @ks8995_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8995_get_revision(%struct.ks8995_switch* %0) #0 {
  %2 = alloca %struct.ks8995_switch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks8995_switch* %0, %struct.ks8995_switch** %2, align 8
  %7 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %8 = load i32, i32* @KS8995_REG_ID0, align 4
  %9 = call i32 @ks8995_read_reg(%struct.ks8995_switch* %7, i32 %8, i32* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %157

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %18 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %25 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %29 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %15
  %38 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %39 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %147 [
    i32 129, label %43
    i32 128, label %114
  ]

43:                                               ; preds = %37
  %44 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %45 = load i32, i32* @KS8995_REG_ID1, align 4
  %46 = call i32 @ks8995_read_reg(%struct.ks8995_switch* %44, i32 %45, i32* %5)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %157

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @get_chip_id(i32 %53)
  %55 = load i32, i32* @CHIPID_M, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @get_chip_id(i32 %58)
  %60 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %61 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @get_chip_rev(i32 %67)
  %69 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %70 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %113

71:                                               ; preds = %57, %52
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @get_chip_id(i32 %72)
  %74 = load i32, i32* @CHIPID_M, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %71
  %77 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %78 = load i32, i32* @KS8995_REG_ID1, align 4
  %79 = call i32 @ks8995_read_reg(%struct.ks8995_switch* %77, i32 %78, i32* %6)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %157

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %91 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @KSZ8864_CHIP_ID, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @get_chip_rev(i32 %98)
  %100 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %101 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %89, %85
  br label %112

103:                                              ; preds = %71
  %104 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %105 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %102
  br label %113

113:                                              ; preds = %112, %66
  br label %156

114:                                              ; preds = %37
  %115 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %116 = load i32, i32* @KS8995_REG_ID1, align 4
  %117 = call i32 @ks8995_read_reg(%struct.ks8995_switch* %115, i32 %116, i32* %5)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %157

123:                                              ; preds = %114
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @get_chip_id(i32 %124)
  %126 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %127 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %125, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load i32, i32* %5, align 4
  %134 = call i8* @get_chip_rev(i32 %133)
  %135 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %136 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %146

137:                                              ; preds = %123
  %138 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %139 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %137, %132
  br label %156

147:                                              ; preds = %37
  %148 = load %struct.ks8995_switch*, %struct.ks8995_switch** %2, align 8
  %149 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %4, align 4
  %153 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %147, %146, %113
  br label %157

157:                                              ; preds = %156, %120, %82, %49, %23, %12
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @ks8995_read_reg(%struct.ks8995_switch*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @get_chip_id(i32) #1

declare dso_local i8* @get_chip_rev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
