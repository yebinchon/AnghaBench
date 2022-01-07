; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct._dlci_stat = type { i32, i32 }

@SDLA_MODEM_DCD_LOW = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"Modem DCD unexpectedly low!\0A\00", align 1
@SDLA_MODEM_CTS_LOW = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Modem CTS unexpectedly low!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Channel became inoperative!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Channel became operative!\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Status change reported by Access Node\0A\00", align 1
@SDLA_DLCI_NEW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@SDLA_DLCI_DELETED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@SDLA_DLCI_ACTIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"unknown status: %02X\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"DLCI %i: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Received unknown DLCIs:\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Command timed out!\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Bc/CIR overflow, acceptable size is %i\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Buffer size over specified max of %i\0A\00", align 1
@SDLA_INFORMATION_WRITE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"Cmd 0x%02X generated return code 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32, i32, i8*)* @sdla_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdla_errors(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct._dlci_stat*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [30 x i8], align 16
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %150 [
    i32 130, label %19
    i32 136, label %43
    i32 135, label %46
    i32 132, label %49
    i32 131, label %108
    i32 128, label %133
    i32 139, label %136
    i32 138, label %140
    i32 137, label %144
    i32 133, label %144
    i32 134, label %144
    i32 129, label %144
  ]

19:                                               ; preds = %6
  %20 = load i8*, i8** %12, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @SDLA_MODEM_DCD_LOW, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i8*, i8** %16, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @SDLA_MODEM_CTS_LOW, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %31
  br label %155

43:                                               ; preds = %6
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %155

46:                                               ; preds = %6
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %155

49:                                               ; preds = %6
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = bitcast i8* %56 to %struct._dlci_stat*
  store %struct._dlci_stat* %57, %struct._dlci_stat** %13, align 8
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %102, %49
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %64 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SDLA_DLCI_NEW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %95

70:                                               ; preds = %62
  %71 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %72 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SDLA_DLCI_DELETED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %94

78:                                               ; preds = %70
  %79 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %80 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SDLA_DLCI_ACTIVE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %93

86:                                               ; preds = %78
  %87 = getelementptr inbounds [30 x i8], [30 x i8]* %17, i64 0, i64 0
  %88 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %89 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [30 x i8], [30 x i8]* %17, i64 0, i64 0
  store i8* %92, i8** %16, align 8
  br label %93

93:                                               ; preds = %86, %85
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.net_device*, %struct.net_device** %7, align 8
  %97 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %98 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %99, i8* %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load %struct._dlci_stat*, %struct._dlci_stat** %13, align 8
  %106 = getelementptr inbounds %struct._dlci_stat, %struct._dlci_stat* %105, i32 1
  store %struct._dlci_stat* %106, %struct._dlci_stat** %13, align 8
  br label %58

107:                                              ; preds = %58
  br label %155

108:                                              ; preds = %6
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 2
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i8*, i8** %12, align 8
  %116 = bitcast i8* %115 to i16*
  store i16* %116, i16** %14, align 8
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %126, %108
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i16*, i16** %14, align 8
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load i16*, i16** %14, align 8
  %130 = getelementptr inbounds i16, i16* %129, i32 1
  store i16* %130, i16** %14, align 8
  br label %117

131:                                              ; preds = %117
  %132 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %155

133:                                              ; preds = %6
  %134 = load %struct.net_device*, %struct.net_device** %7, align 8
  %135 = call i32 @netdev_err(%struct.net_device* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %155

136:                                              ; preds = %6
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %138)
  br label %155

140:                                              ; preds = %6
  %141 = load %struct.net_device*, %struct.net_device** %7, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %142)
  br label %155

144:                                              ; preds = %6, %6, %6, %6
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @SDLA_INFORMATION_WRITE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %155

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %6, %149
  %151 = load %struct.net_device*, %struct.net_device** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @netdev_dbg(%struct.net_device* %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %148, %140, %136, %133, %131, %107, %46, %43, %42
  ret void
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
