; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_dnload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_dnload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32 }
%struct.i2400m_bcf_hdr = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"(i2400m %p bcf %p fw size %zu)\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"device rebooted too many times, aborting\0A\00", align 1
@I2400M_BRI_MAC_REINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bootrom init failed: %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"fw %s: download failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"fw %s: download finalization failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"fw %s successfully uploaded\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"(i2400m %p bcf %p size %zu) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"device rebooted, %d tries left\0A\00", align 1
@I2400M_BRI_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i32)* @i2400m_fw_dnload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_dnload(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_bcf_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2400m_bcf_hdr*, align 8
  %13 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %21 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @d_fnstart(i32 5, %struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %20, %struct.i2400m_bcf_hdr* %21, i64 %22)
  %24 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = call i32 (...) @wmb()
  br label %27

27:                                               ; preds = %145, %4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @ERESTARTSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.device*, %struct.device** %10, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %137

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @I2400M_BRI_MAC_REINIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @i2400m_bootrom_init(%struct.i2400m* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %136

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* @I2400M_BRI_MAC_REINIT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @EBADF, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %59 = call %struct.i2400m_bcf_hdr* @i2400m_bcf_hdr_find(%struct.i2400m* %58)
  store %struct.i2400m_bcf_hdr* %59, %struct.i2400m_bcf_hdr** %12, align 8
  %60 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %12, align 8
  %61 = icmp eq %struct.i2400m_bcf_hdr* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %135

63:                                               ; preds = %52
  %64 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %65 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %12, align 8
  %66 = call i32 @i2400m_dnload_init(%struct.i2400m* %64, %struct.i2400m_bcf_hdr* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ERESTARTSYS, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %145

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %134

76:                                               ; preds = %72
  %77 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %12, align 8
  %78 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  store i64 %82, i64* %13, align 8
  %83 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %84 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @i2400m_dnload_bcf(%struct.i2400m* %83, %struct.i2400m_bcf_hdr* %84, i64 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ERESTARTSYS, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %145

92:                                               ; preds = %76
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.device*, %struct.device** %10, align 8
  %97 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %98 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  br label %133

102:                                              ; preds = %92
  %103 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %104 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %12, align 8
  %105 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @i2400m_dnload_finalize(%struct.i2400m* %103, %struct.i2400m_bcf_hdr* %104, %struct.i2400m_bcf_hdr* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ERESTARTSYS, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %145

113:                                              ; preds = %102
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.device*, %struct.device** %10, align 8
  %118 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %119 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121)
  br label %132

123:                                              ; preds = %113
  %124 = load %struct.device*, %struct.device** %10, align 8
  %125 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %126 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @d_printf(i32 2, %struct.device* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %130 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = call i32 (...) @wmb()
  br label %132

132:                                              ; preds = %123, %116
  br label %133

133:                                              ; preds = %132, %95
  br label %134

134:                                              ; preds = %133, %75
  br label %135

135:                                              ; preds = %134, %62
  br label %136

136:                                              ; preds = %135, %47
  br label %137

137:                                              ; preds = %136, %31
  %138 = load %struct.device*, %struct.device** %10, align 8
  %139 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %140 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @d_fnend(i32 5, %struct.device* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), %struct.i2400m* %139, %struct.i2400m_bcf_hdr* %140, i64 %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  ret i32 %144

145:                                              ; preds = %112, %91, %71
  %146 = load %struct.device*, %struct.device** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @I2400M_BRI_SOFT, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %27
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2400m_bootrom_init(%struct.i2400m*, i32) #1

declare dso_local %struct.i2400m_bcf_hdr* @i2400m_bcf_hdr_find(%struct.i2400m*) #1

declare dso_local i32 @i2400m_dnload_init(%struct.i2400m*, %struct.i2400m_bcf_hdr*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @i2400m_dnload_bcf(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64) #1

declare dso_local i32 @i2400m_dnload_finalize(%struct.i2400m*, %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
